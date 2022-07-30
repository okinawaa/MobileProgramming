import 'package:flutter/material.dart';
import 'package:weather_app/screens/loading.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Weather app',
        theme: ThemeData(primaryColor: Colors.blue),
        home: Loading());
  }
}
