import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chanhyuk_talk/controllers/local_controller.dart';
import 'package:flutter_chanhyuk_talk/controllers/user_controller.dart';
import 'package:flutter_chanhyuk_talk/screens/main/main_screen.dart';
import 'package:flutter_chanhyuk_talk/screens/start/start_screen.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chanhyuk Talk',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "/start",
        onInit: () {
          Get.put(LocalController());
          Get.put(UserController());
        },
        getPages: [
          GetPage(name: "/start", page: () => const StartScreen()),
          GetPage(name: "/main", page: () => const MainScreen()),
        ]);
  }
}
