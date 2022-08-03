import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ActiveHistory extends StatelessWidget {
  const ActiveHistory({Key? key}) : super(key: key);

  Widget _newRecentyleActiveView(String title) {
    return Padding(padding: const EdgeInsets.symmetric());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          '활동',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          _newRecentyleActiveView("오늘"),
          _newRecentyleActiveView("이번주"),
          _newRecentyleActiveView("이번달"),
        ],
      )),
    );
  }
}
