import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First app",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
        title: Text("First app"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("hello"),
            Text("hello"),
            Text("hello")
          ],
        ),
      ),
      ),
    );
  }
}
