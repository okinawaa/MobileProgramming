import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_instagram_clone/src/binding/init_bindings.dart';
import 'package:flutter_instagram_clone/src/models/instagram_user.dart';
import 'package:flutter_instagram_clone/src/pages/upload.dart';
import 'package:flutter_instagram_clone/src/repository/user_repository.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();

  // 글로벌적으로 사용할 user
  Rx<IUser> user = IUser().obs;

  Future<IUser?> loginUser(String uid) async {
    var userData = await UserRepository.loginUserByUid(uid);
    if (userData != null) {
      user(userData);
      // 회원가입 후에 마이페이지는 바인딩 시켜주면된다.
      InitBinding.additionalBinding();
    }
    return userData;
  }

// 회원가입 데이터 가공
  void signup(IUser signupUser, XFile? thumbnail) async {
    if (thumbnail == null) {
      _submitSignup(signupUser);
    } else {
      UploadTask task = uploadXFile(thumbnail,
          '${signupUser.uid}/profile.${thumbnail.path.split('.').last}');
      task.snapshotEvents.listen((event) async {
        if (event.bytesTransferred == event.totalBytes &&
            event.state == TaskState.success) {
          var downloadUrl = await event.ref.getDownloadURL();
          // for immutable using copyWith
          var updatedUserData = signupUser.copyWith(thumbnail: downloadUrl);
          _submitSignup(updatedUserData);
        }
      });
    }
  }

  UploadTask uploadXFile(XFile file, String filename) {
    File f = File(file.path);
    Reference ref =
        FirebaseStorage.instance.ref().child('users').child(filename);
    final metadata = SettableMetadata(
        contentType: 'image/jpeg',
        customMetadata: {'picked-file-path': file.path});
    return ref.putFile(f, metadata);
  }

// 회원가입 신청
  void _submitSignup(IUser signupUser) async {
    var result = await UserRepository.signup(signupUser);
    // 회원가입후 받은 uid 를 이용해서 로그인
    if (result) {
      loginUser(signupUser.uid!);
    }
  }
}
