import 'package:flutter/material.dart';
import 'package:flutter_hive_tutorial/model/word.dart';
import 'package:flutter_hive_tutorial/screen/home.dart';
import 'package:get/route_manager.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(WordAdapter());
  // 한번 박스를 열어두면 추후에는 Hive.box 로 접근 가능
  await Hive.openBox<Word>('word');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
