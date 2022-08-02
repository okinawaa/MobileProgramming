// 앱이 실행되는 동시에 GetX 컨트롤러들을 필요에 따라 인스턴스로 올려주기 위함

import 'package:flutter_instagram_clone/src/controller/bottom_nav_controller.dart';
import 'package:get/instance_manager.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController(), permanent: true);
  }
}
