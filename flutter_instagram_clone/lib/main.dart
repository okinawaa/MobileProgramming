import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/src/app.dart';
import 'package:flutter_instagram_clone/src/binding/init_bindings.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black)
        ),
      ),
      // 앱이 실행되는 순간 인스턴스로 올라간다
      initialBinding: InitBinding(),
      home: const App(),
    );
  }
}

