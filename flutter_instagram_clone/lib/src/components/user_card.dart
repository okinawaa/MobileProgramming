import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_instagram_clone/src/components/avatar_widget.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key, required this.userId, required this.description})
      : super(key: key);

  final String userId;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: 150,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black12)),
      // 닫기 버튼을 absolute 로 띄우기 위해서 Stack 사용
      child: Stack(
        children: [
          Positioned(
            left: 15,
            right: 15,
            top: 0,
            bottom: 0,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const AvatarWidget(
                  type: AvatarType.TYPE2,
                  thumbPath: "https://picsum.photos/200",
                  size: 80,
                ),
                const SizedBox(height: 10),
                Text(
                  userId,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 13),
                ),
                Text(
                  description,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 13),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Follow"))
              ],
            ),
          ),
          // X 버튼이 아래에 있어야지 위에뜬다
          Positioned(
            right: 5,
            top: 5,
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.close,
                size: 14,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
