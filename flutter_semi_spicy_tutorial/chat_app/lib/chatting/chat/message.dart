import 'package:chat_app/chatting/chat/chat_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('chat')
          .orderBy('time', descending: true)
          .snapshots(),
      builder: (context,
          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: const CircularProgressIndicator(),
          );
        }

        final chatDocs = snapshot.data!.docs; // 실제 챗

        return ListView.builder(reverse: true,itemCount: chatDocs.length, itemBuilder: (context, index){return CChatBubble(
          chatDocs[index]['text'],
        chatDocs[index]['userID'].toString() == user!.uid,
              chatDocs[index]['userName'],
              chatDocs[index]['userImage']
        );
        }, 
        );
          },        
        );
  }
}

