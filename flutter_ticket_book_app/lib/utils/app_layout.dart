import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getHeight(double pixels) {
    double x = getScreenHeight() /
        pixels; // height:800 , pixels : 200 => return 200  height : 1600 , pixels : 200 return 200
    return getScreenHeight() / x;
  }

  static getWidth(double pixels) {
    double x = getScreenWidth() /
        pixels; // height:800 , pixels : 200 => return 200  height : 1600 , pixels : 200 return 200
    return getScreenWidth() / x;
  }
}
