import 'package:flutter_instagram_clone/src/models/post.dart';
import 'package:flutter_instagram_clone/src/repository/post_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  // 글로벌 변수
  RxList<Post> postList = <Post>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadFeedList();
  }

  void loadFeedList() async {
    postList.clear();
    // 데이터 베이스를 통해 가져옴 , 아직 페이지네이션은 구현
    List<Post> feedList = await PostRepository.loadFeedList();
    postList.addAll(feedList);
  }
}
