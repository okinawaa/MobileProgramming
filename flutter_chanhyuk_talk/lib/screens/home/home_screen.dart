import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chanhyuk_talk/controllers/user_controller.dart';
import 'package:flutter_chanhyuk_talk/models/user.dart';
import 'package:flutter_chanhyuk_talk/utils/chat_utils.dart';
import 'package:flutter_chanhyuk_talk/utils/stream_utils.dart';

class HomeScreen extends StatelessWidget {
  final Function pageUpdateFunction;
  const HomeScreen({Key? key, required this.pageUpdateFunction})
      : super(key: key);

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
                  child: Row(
                    children: [
                      user.imageUrl.isNotEmpty
                          ? Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(user.imageUrl))),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[200],
                                  borderRadius: BorderRadius.circular(10)),
                              width: 50,
                              height: 50,
                            ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text(user.name), Text(user.phone)],
                      ),
                      const Spacer(),
                      user.id != UserController.to.user!.id
                          ? GestureDetector(
                              onTap: () async {
                                String? chatId = await ChatUtils().chatWithUser(
                                    receiverId: user.id,
                                    receiverImageUrl: user.imageUrl,
                                    receiverName: user.name);
                                pageUpdateFunction(1);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Text(
                                  "채팅하기",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            )
                          : Container()
                    ],
                  ),
                );
              }).toList(),
            );
          }
          return Container();
        });
  }
}
