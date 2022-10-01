import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chanhyuk_talk/models/chat.dart';
import 'package:flutter_chanhyuk_talk/models/chatRoom.dart';
import 'package:flutter_chanhyuk_talk/utils/chat_utils.dart';
import 'package:flutter_chanhyuk_talk/utils/get_duration_utils.dart';
import 'package:flutter_chanhyuk_talk/utils/stream_utils.dart';

import 'package:image_picker/image_picker.dart';

import '../../models/user.dart';

class ChatDetailScreen extends StatefulWidget {
  final ChatRoom chatRoom;
  final User user;
  const ChatDetailScreen({
    Key? key,
    required this.chatRoom,
    required this.user,
  }) : super(key: key);

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  final TextEditingController _messageController = TextEditingController();
  static final picker = ImagePicker();
  static final chatUtils = ChatUtils();
  final ScrollController _scrollController = ScrollController(
    initialScrollOffset: 0,
  );
  String imageUrl = '';

  Future<void> selectImage() async {
    XFile? _pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 540,
      maxHeight: 540,
    );
    if (_pickedFile == null) return;
    File _image = File(_pickedFile.path);
    String? _imageUrl = await chatUtils.saveImageInStorage(
        chatroomId: widget.chatRoom.id, image: _image);
    if (_imageUrl != null) {
      setState(() {
        imageUrl = _imageUrl;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26253A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF26253A),
        foregroundColor: Colors.white,
        elevation: 0,
        title: Text(widget.user.name),
      ),
      body: StreamBuilder(
        stream: StreamUtils().getChatStream(widget.chatRoom.id),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            QuerySnapshot<Map<String, dynamic>> chatData = snapshot.data;
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              _scrollController.animateTo(
                _scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 1),
                curve: Curves.easeOut,
              );
            });
            return SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: ListView(
                        controller: _scrollController,
                        children: chatData.docs.map((e) {
                          Chat chat = Chat.fromJson({'id': e.id, ...e.data()});
                          if (chat.messageType == 'text') {
                            return SizedBox(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment:
                                    chat.senderId == widget.user.id
                                        ? CrossAxisAlignment.start
                                        : CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF29343E),
                                      borderRadius: BorderRadius.only(
                                        topLeft: const Radius.circular(5),
                                        topRight: const Radius.circular(5),
                                        bottomLeft:
                                            chat.senderId == widget.user.id
                                                ? const Radius.circular(0)
                                                : const Radius.circular(5),
                                        bottomRight:
                                            chat.senderId == widget.user.id
                                                ? const Radius.circular(5)
                                                : const Radius.circular(0),
                                      ),
                                    ),
                                    child: Text(
                                      chat.message,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 4),
                                    child: Text(
                                      getDuration(chat.timeStamp),
                                      style: const TextStyle(
                                        fontSize: 8,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                          return Container(
                            alignment: chat.senderId == widget.user.id
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.network(
                                    chat.message,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    getDuration(chat.timeStamp),
                                    style: const TextStyle(
                                      fontSize: 8,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      imageUrl != ''
                          ? Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 80,
                              color: Colors.grey.withOpacity(0.3),
                              child: SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                  imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : Container(),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                          left: 16,
                          right: 16,
                          top: 8,
                          bottom: MediaQuery.of(context).viewPadding.bottom + 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xFF212031),
                        ),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: selectImage,
                              child: const Icon(
                                Icons.image_outlined,
                                size: 40,
                                color: Color(0xFF71707F),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2B2A3A),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: TextField(
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Send Message',
                                    hintStyle: TextStyle(
                                      color: Color(0xFF71707F),
                                    ),
                                  ),
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                  controller: _messageController,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                if (imageUrl == '') {
                                  if (_messageController.text.isEmpty) return;
                                  await chatUtils.sendMessage(
                                    chatRoomId: widget.chatRoom.id,
                                    message: _messageController.text,
                                    messageType: 'text',
                                  );
                                } else {
                                  await chatUtils.sendMessage(
                                    chatRoomId: widget.chatRoom.id,
                                    message: imageUrl,
                                    messageType: 'image',
                                  );
                                }
                                _scrollController.animateTo(
                                  _scrollController.position.maxScrollExtent,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeOut,
                                );
                                _messageController.clear();
                                setState(() {
                                  imageUrl = '';
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.only(left: 8),
                                child: const Icon(
                                  Icons.near_me,
                                  color: Color(0xFF71707F),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
          return const Center(
            child: Text('연결을 확인해주세요...'),
          );
        },
      ),
    );
  }
}
