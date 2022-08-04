import 'package:flutter/material.dart';
import 'package:get/get.dart';

// 마이페이지에 대한 컨트롤러
class MypageController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    _setTargetuser();
  }

  void _setTargetuser() {
    /*
   나의 프로필은 BottomNavigator 를 통해서 접근하고
   타인의 프로필은 클릭을 해서 들어감, 그렇다면 targetUid 가 주어진다.
   즉 targetUid 가 null 이란것은 나의 프로필이다.
  */
    var uid = Get.parameters["targetUid"];

    if (uid == null) {
      // targetUser(AuthController.to.user.value)
    }
  }
}
