import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chanhyuk_talk/models/user.dart';
import 'package:flutter_chanhyuk_talk/utils/stream_utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: StreamUtils().getUserStream(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            QuerySnapshot<Map<String, dynamic>> data = snapshot.data;

            return Column(
              children:
                  data.docs.map((DocumentSnapshot<Map<String, dynamic>> item) {
                User user = User.fromJson({'id': item.id, ...item.data()!});
                return Container(
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(user.name),
                );
              }).toList(),
            );
          }
          return Container();
        });
  }
}
