import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_chanhyuk_talk/constants/variables.dart';
import 'package:flutter_chanhyuk_talk/controllers/user_controller.dart';

class ChatUtils {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final FirebaseStorage _firestorage = FirebaseStorage.instance;

  // 채팅 시작 방만들기 플로우
  Future<String?> chatWithUser(
      {required String receiverId,
      required String receiverImageUrl,
      required String receiverName}) async {
    try {
      // 이미 그사람과 채팅방이 있다면 반환해준다
      for (var chatroom in UserController.to.user!.chatRoomList) {
        if (chatroom['userList'].contains(receiverId)) {
          return chatroom["id"];
        }
      }

      String _timeStamp = DateTime.now().toString();

      // 채팅 데이터 생성 상대방과 나와의
      DocumentReference<Map<String, dynamic>> _chatData =
          await _firestore.collection(chatRoomCollection).add({
        'userIdList': [UserController.to.user!.id, receiverId],
        'userList': [
          {
            'id': UserController.to.user!.id,
            'name': UserController.to.user!.name,
            'imageUrl': UserController.to.user!.imageUrl,
          },
          {'id': receiverId, 'name': receiverName, 'imageUrl': receiverImageUrl}
        ],
        'timeStamp': _timeStamp,
        'lastMessage': '',
        'lastMessageTimeStamp': _timeStamp
      });

// 데이터베이스에서 나의 채팅방을 업데이트
      await _firestore
          .collection(userCollection)
          .doc(UserController.to.user!.id)
          .update({
        'chatRoomList': [
          ...UserController.to.user!.chatRoomList,
          {
            'id': _chatData.id,
            'userList': [UserController.to.user!.id, receiverId]
          }
        ]
      });

      // 상대방의 값 가져오기
      DocumentSnapshot<Map<String, dynamic>> _receiverData =
          await _firestore.collection(userCollection).doc(receiverId).get();

      await _firestore.collection(userCollection).doc(receiverId).update({
        'chatRoomList': [
          ..._receiverData.data()!['chatRoomList'],
          {
            'id': _chatData.id,
            'userList': [UserController.to.user!.id, receiverId]
          }
        ],
      });

      await UserController.to.refreshUser();
      return _chatData.id;
    } catch (e) {
      return null;
    }
  }

  // 메세지 보내기
  Future<void> sendMessage({
    required String chatRoomId,
    required String message,
    required String messageType,
  }) async {
    String _timeStamp = DateTime.now().toString();

    if (messageType == "text") {
      await _firestore
          .collection(chatRoomCollection)
          .doc(chatRoomId)
          .update({'lastMessage': message, 'lastMessageTimeStamp': _timeStamp});
    }
    // nested collection
    await _firestore
        .collection(chatRoomCollection)
        .doc(chatRoomId)
        .collection(chatCollection)
        .add({
      'senderId': UserController.to.user!.id,
      'message': message,
      'messageType': messageType,
      'timeStamp': Timestamp,
    });
  }

  // 채팅 이미지 저장하기
  Future<String?> saveImageInStorage(
      {required String chatroomId, required File image}) async {
    try {
      String destination = 'chatroom/$chatroomId';
      final ref = _firestorage.ref(destination);
      TaskSnapshot uploadedFile = await ref.putFile(image);
      return await uploadedFile.ref.getDownloadURL();
    } catch (e) {
      return null;
    }
  }
}
