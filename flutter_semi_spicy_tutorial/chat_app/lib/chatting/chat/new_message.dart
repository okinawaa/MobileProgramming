import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({Key? key}) : super(key: key);

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  final _controller = TextEditingController();
  String _userEnterMessage = "";

  void _sendMessage() async {
    //FocusScope.of(context).unfocus(); // 전송하면 키보드 내려가게함 근데 불편하므로 사용안함
    final user = FirebaseAuth
        .instance.currentUser; // firebase 로 부터 현재 유저 정보가져옴 User class 소속
    final userData = await FirebaseFirestore.instance
        .collection('user')
        .doc(user!.uid)
        .get(); // 이 uid 에 해당하는 유저의 정보를 다 보여줘! 이메일이나 휴대폰번호 등

    FirebaseFirestore.instance.collection('chat').add({
      'text': _userEnterMessage,
      'time': Timestamp.now(),
      'userID': user.uid,
      'userName': userData.data()!['userName'],
      'userImage': userData['picked_image']
    });

    _controller.clear(); // 채팅 보냈으면 인풋 비워주자
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              maxLines: null,
              controller: _controller,
              decoration: InputDecoration(labelText: 'Send a message...'),
              onChanged: (value) {
                setState(() {
                  _userEnterMessage = value;
                });
              },
            ),
          ),
          IconButton(
            onPressed: _userEnterMessage.trim().isEmpty ? null : _sendMessage,
            icon: Icon(Icons.send),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
