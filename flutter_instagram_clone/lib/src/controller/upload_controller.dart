import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_instagram_clone/src/components/message_popup.dart';
import 'package:flutter_instagram_clone/src/controller/home_controller.dart';
import 'package:flutter_instagram_clone/src/pages/upload/upload_description.dart';
import 'package:flutter_instagram_clone/src/repository/post_repository.dart';
import 'package:flutter_instagram_clone/src/utils/data_util.dart';
import 'package:get/get.dart';
import 'package:image/image.dart' as imageLib;
import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/src/controller/auth_controller.dart';
import 'package:flutter_instagram_clone/src/models/post.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:path/path.dart';
import 'package:photofilters/photofilters.dart';

class UploadController extends GetxController {
  // The abstraction of albums and folders.
  List<AssetPathEntity> albums = <AssetPathEntity>[];
  // The abstraction of assets (images/videos/audios). It represents a series of fields
  RxList<AssetEntity> imageList = <AssetEntity>[].obs;
  RxString headerTitle = ''.obs;
  TextEditingController textEditingController = TextEditingController();
  Rx<AssetEntity> selectedImage =
      const AssetEntity(id: '0', typeInt: 0, width: 0, height: 0).obs;
  File? filteredImage;
  Post? post;

  @override
  void onInit() {
    super.onInit();
    post = Post.init(AuthController.to.user.value);
    _loadPhotos();
  }

  void _loadPhotos() async {
    PermissionState result = await PhotoManager.requestPermissionExtend();
    if (result.isAuth) {
      print("asda");
      albums = await PhotoManager.getAssetPathList(
          type: RequestType.image,
          filterOption: FilterOptionGroup(
              imageOption: const FilterOption(
                sizeConstraint: SizeConstraint(minHeight: 100, minWidth: 100),
              ),
              orders: [
                const OrderOption(type: OrderOptionType.createDate, asc: false),
              ]));
      _loadData();
    } else {
      print("permission");
      // 권한 요청
    }
  }

  void _loadData() {
    print(albums.first);
    changeAlbum(albums.first);
  }

  void changeAlbum(AssetPathEntity album) async {
    headerTitle(album.name);
    await _pagingPhotos(album);
  }

  Future<void> _pagingPhotos(AssetPathEntity album) async {
    // 앨범 바뀌면 이전 앨범에 의한 목록들 클리어
    imageList.clear();
    List<AssetEntity> photos = await album.getAssetListPaged(page: 0, size: 30);
    imageList.addAll(photos);
    changeSelectedImage(imageList.first);
  }

  // 썸네일 바꿔줌
  changeSelectedImage(AssetEntity image) {
    selectedImage(image);
  }

  void gotoImageFilter() async {
    File? file = await selectedImage.value.file;
    String fileName = basename(file!.path);
    imageLib.Image? image = imageLib.decodeImage(file.readAsBytesSync());
    image = imageLib.copyResize(image!, width: 1000);
    var imagefile = await Navigator.push(
        Get.context!,
        MaterialPageRoute(
            builder: (context) => PhotoFilterSelector(
                title: const Text("Photo Filter Example"),
                filters: presetFiltersList,
                image: image!,
                loader: const Center(
                  child: CircularProgressIndicator(),
                ),
                filename: fileName)));

    if (imagefile != null && imagefile.containsKey("image_filtered")) {
      filteredImage = imagefile['image_filtered'];
      Get.to(() => const UploadDescription());
    }
  }

  void unfocusKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  void uploadPost() {
    unfocusKeyboard();
    var filename = DataUtil.makeFilePath();
    var task = uploadFile(
        filteredImage!, '/${AuthController.to.user.value.uid}/$filename');
    if (task != null) {
      task.snapshotEvents.listen(
        (event) async {
          if (event.bytesTransferred == event.totalBytes &&
              event.state == TaskState.success) {
            var downloadUrl = await event.ref.getDownloadURL();
            var updatedPost = post!.copyWith(
              thumbnail: downloadUrl,
              description: textEditingController.text,
            );
            // 최종적으로 전달하로 가자.
            _submitPost(updatedPost);
          }
        },
      );
    }
  }

  UploadTask uploadFile(File file, String filename) {
    var ref = FirebaseStorage.instance.ref().child('instagram').child(filename);
    final metadata = SettableMetadata(
        contentType: 'image/jpeg',
        customMetadata: {'picked-file-path': file.path});
    return ref.putFile(file, metadata);
  }

  // 최종 전달.
  void _submitPost(Post postData) async {
    await PostRepository.updatePost(postData);
    showDialog(
      context: Get.context!,
      builder: (context) => MessagePopup(
        title: '포스트',
        message: '포스팅이 완료 되었습니다.',
        okCallback: () {
          HomeController.to.loadFeedList();
          Get.until((route) => Get.currentRoute == '/');
        },
      ),
    );
  }
}
