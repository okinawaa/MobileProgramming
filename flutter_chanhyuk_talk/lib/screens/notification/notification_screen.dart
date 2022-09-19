import 'package:flutter/material.dart';
import 'package:flutter_chanhyuk_talk/components/common/button.dart';
import 'package:flutter_chanhyuk_talk/controllers/local_controller.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Button(
            title: "로그아웃",
            icon: Icons.delete_forever,
            onPressed: () {
              LocalController.to.toggleSharedPreferences();
              Get.offAllNamed("/start");
            })
      ],
    );
  }
}
