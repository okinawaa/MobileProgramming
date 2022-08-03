import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_instagram_clone/src/components/avatar_widget.dart';

class ActiveHistory extends StatelessWidget {
  const ActiveHistory({Key? key}) : super(key: key);

  Widget _activeItem() {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: const [
            AvatarWidget(
                type: AvatarType.TYPE2,
                size: 40,
                thumbPath: "https://picsum.photos/50"),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text.rich(
                TextSpan(
                    text: "박찬혁",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: "님이 회원님의 게시물을 좋아합니다.",
                          style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(
                          text: " 5d",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                              color: Colors.black54)),
                    ]),
              ),
            )
          ],
        ));
  }

  Widget _newRecentyleActiveView(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 15,
          ),
          _activeItem(),
          _activeItem(),
          _activeItem(),
          _activeItem(),
        ],
      ),
    );
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
