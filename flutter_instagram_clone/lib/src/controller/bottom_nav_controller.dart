import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/src/components/message_popup.dart';
import 'package:flutter_instagram_clone/src/pages/upload.dart';
import 'package:get/get.dart';

/*
 일반적인 숫자 인덱스로 메뉴를 관리하는 것보다 ENUM 으로 관리하는 것이 
 오탈자나 유지보수성 측면에서 이점을 가져감
*/
enum PageName { HOME, SEARCH, UPLOAD, ACTIVITY, MYPAGE }

class BottomNavController extends GetxController {
  //  Get.find() 함수를 치환하여 to 라고 부르겠다
  static BottomNavController get to => Get.find();
  RxInt pageIndex = 0.obs;
  // 페이지 쌓는 기록
  List<int> bottomHistory = [0];

  GlobalKey<NavigatorState> searchPageNavigationKey =
      GlobalKey<NavigatorState>();

  void changeBottomNav(int value, {bool hasGesture = true}) {
    PageName page = PageName.values[value];
    switch (page) {
      case PageName.UPLOAD:
        Get.to(() => Upload());
        break;
      case PageName.HOME:
      case PageName.SEARCH:
      case PageName.ACTIVITY:
      case PageName.MYPAGE:
        _changePage(value, hasGesture);
        break;
    }
  }

  void _changePage(int value, bool hasGesture) {
    pageIndex(value);
    if (!hasGesture) return;
    if (bottomHistory.last != value) {
      bottomHistory.add(value);
    }
  }

  Future<bool> willPopAction() async {
    if (bottomHistory.length == 1) {
      showDialog(
          context: Get.context!,
          builder: (context) => MessagePopup(
                message: "종료하시겠습니까?",
                okCallback: () {
                  exit(0);
                },
                cancelCallback: Get.back,
                title: "시스템",
              ));
      return true;
    } else {
      PageName page = PageName.values[bottomHistory.last];
      if (page == PageName.SEARCH) {
        // 팝할것이 있다면, 팝 한 뒤 true 를 반환함, value 가 false라는 것은 팝할게 없다는것
        bool value = await searchPageNavigationKey.currentState!.maybePop();
        if (value) return false;
      }

      bottomHistory.removeLast();
      int index = bottomHistory.last;
      changeBottomNav(index, hasGesture: false);
      return false;
    }
  }
}
