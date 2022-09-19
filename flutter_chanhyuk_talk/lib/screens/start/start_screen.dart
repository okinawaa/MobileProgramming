import 'package:flutter/material.dart';
import 'package:flutter_chanhyuk_talk/controllers/local_controller.dart';
import 'package:flutter_chanhyuk_talk/controllers/user_controller.dart';
import 'package:flutter_chanhyuk_talk/screens/login/login_page.dart';
import 'package:flutter_chanhyuk_talk/screens/main/main_screen.dart';
import 'package:flutter_chanhyuk_talk/screens/register/register_page.dart';
import 'package:get/get.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  Future<void> isSignIn() async {
    String? userId = await LocalController.to.getId();
    if (userId != null) {
      await UserController.to.getUser(userId);
      if (UserController.to.user != null) Get.off(() => const MainScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
              onPressed: () {
                Get.to(() => const LoginPage());
              },
              child: const Text("로그인하기")),
          TextButton(
              onPressed: () {
                Get.to(() => const RegisterScreen());
              },
              child: const Text("회원가입하기")),
        ]),
      ),
    );
  }
}
