import 'package:chat_app/chatting/chat/message.dart';
import 'package:chat_app/chatting/chat/new_message.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _authentication = FirebaseAuth.instance;
  User? loggedUser; // User is firebase based class

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _authentication.currentUser;
      if (user != null) {
        loggedUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Screen !"),
        actions: [
          IconButton(
              icon: const Icon(Icons.exit_to_app_sharp, color: Colors.white),
              onPressed: () {
                _authentication.signOut(); // from firebase
                Navigator.pop(context);
              }),
        ],
      ),
      body: Container(
        child: Column(children: [
          const Expanded(child: const Messages()), // Message Duplicate naming 으로 인해 CMessage 로 지정
        const NewMessage(), //  입력 input
        ]),
      ),
    );
  }
}
