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
  RxInt pageIndex = 0.obs;
  // 페이지 쌓는 기록
  List<int> bottomHistory = [0];

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
      bottomHistory.removeLast();
      int index = bottomHistory.last;
      changeBottomNav(index, hasGesture: false);
      return false;
    }
  }
}
