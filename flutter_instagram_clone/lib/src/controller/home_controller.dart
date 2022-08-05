import 'package:flutter_instagram_clone/src/models/post.dart';
import 'package:flutter_instagram_clone/src/repository/post_repository.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  // 글로벌 변수
  RxList<Post> postList = <Post>[].obs;

  @override
  void onInit() {
    super.onInit();
    _loadFeedList();
  }

  void _loadFeedList() async {
    // 데이터 베이스를 통해 가져옴 , 아직 페이지네이션은 구현X
    List<Post> feedList = await PostRepository.loadFeedList();
    postList.addAll(feedList);
  }
}
