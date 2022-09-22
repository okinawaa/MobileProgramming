import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_chanhyuk_talk/constants/variables.dart';

class StreamUtils {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> getUserStream() {
    // 빨대 꽃기
    return _firestore.collection(userCollection).snapshots();
  }

  // 내가 속해있는 채팅방 목록을 지켜봐라
  Stream<QuerySnapshot<Map<String, dynamic>>> getChatRoomStream(String userId) {
    return _firestore
        .collection(chatRoomCollection)
        .where('userIdList', arrayContains: userId)
        .snapshots();
  }

  // 받은 채팅방에 채팅을 지켜봐라
  Stream<QuerySnapshot<Map<String, dynamic>>> getChatStream(String chatRoomId) {
    return _firestore
        .collection(chatRoomCollection)
        .doc(chatRoomId)
        .collection(chatCollection)
        .orderBy('timeStamp')
        .snapshots();
  }
}
