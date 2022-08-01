import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// constants

class Model {
  Widget? getWeatherIcon(int condition) {
    if (condition < 300) {
      return SvgPicture.asset(
        'svg/climacon-colud_lightning.svg',
        color: Colors.black87,
      );
    } else if (condition < 500) {
      return SvgPicture.asset(
        'svg/climacon-cloud_rain.svg',
        color: Colors.black87,
      );
    } else if (condition < 600) {
      return SvgPicture.asset(
        'svg/climacon-cloud_snow_alt.svg',
        color: Colors.black87,
      );
    } else if (condition == 800) {
      return SvgPicture.asset(
        'svg/climacon-sun.svg',
        color: Colors.black87,
      );
    } else if (condition <= 804) {
      return SvgPicture.asset(
        'svg/climacon-cloud_sun.svg',
        color: Colors.black87,
      );
    }
  }

  Widget? getAirIcon(int? grade) {
    if (grade == 1) {
      return Image.asset(
        'images/good.png',
        width: 37,
        height: 35,
      );
    } else if (grade == 2) {
      return Image.asset(
        'images/fair.png',
        width: 37,
        height: 35,
      );
    } else if (grade == 3) {
      return Image.asset(
        'images/moderate.png',
        width: 37,
        height: 35,
      );
    } else if (grade == 4) {
      return Image.asset(
        'images/poor.png',
        width: 37,
        height: 35,
      );
    } else if (grade == 5) {
      return Image.asset(
        'images/bad.png',
        width: 37,
        height: 35,
      );
    }
  }

  Widget? airIndex(int? index) {
    if (index == 1) {
      return const Text(
        '"매우좋음"',
        style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
      );
    } else if (index == 2) {
      return const Text(
        '"좋음"',
        style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
      );
    } else if (index == 3) {
      return Text(
        '"보통"',
        style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
      );
    } else if (index == 4) {
      return Text(
        '"나쁨"',
        style: const TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
      );
    } else if (index == 5) {
      return const Text(
        '"매우나쁨"',
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      );
    }
  }
}