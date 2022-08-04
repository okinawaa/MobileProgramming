import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_instagram_clone/src/app.dart';
import 'package:flutter_instagram_clone/src/controller/auth_controller.dart';
import 'package:flutter_instagram_clone/src/models/instagram_user.dart';
import 'package:flutter_instagram_clone/src/pages/login.dart';
import 'package:flutter_instagram_clone/src/pages/signup.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// 권한에 따른 분기
class Root extends GetView<AuthController> {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        // 여기서 User 는 파이어베이스 제공클래스
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext _, AsyncSnapshot<User?> user) {
          if (user.hasData) {
            return FutureBuilder<IUser?>(
                future: controller.loginUser(user.data!.uid),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return const App();
                  } else {
                    return Obx(() => controller.user.value.uid != null
                        ? const App()
                        : Signup(uid: user.data!.uid));
                  }
                });
          } else {
            return const Login();
          }
        });
  }
}
