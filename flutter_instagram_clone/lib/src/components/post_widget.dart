import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_instagram_clone/src/components/avatar_widget.dart';
import 'package:flutter_instagram_clone/src/components/image_data.dart';
import 'package:get/get.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AvatarWidget(
            type: AvatarType.TYPE3,
            thumbPath: "https://picsum.photos/200",
            size: 40,
            nickname: "개복치복치",
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(
                IconsPath.postMoreIcon,
                width: 30,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
        imageUrl: "https://picsum.photos/${Get.width.round()}");
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageData(
                IconsPath.likeOffIcon,
                width: 65,
              ),
              const SizedBox(
                width: 15,
              ),
              ImageData(
                IconsPath.replyIcon,
                width: 60,
              ),
              const SizedBox(
                width: 15,
              ),
              ImageData(
                IconsPath.directMessage,
                width: 55,
              ),
            ],
          ),
          ImageData(
            IconsPath.bookMarkOffIcon,
            width: 50,
          )
        ],
      ),
    );
  }

  Widget _infoDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "좋아요 124개",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ExpandableText(
            "댓글입니다\n댓글입니다댓글입니다\n댓글입니다댓글입니다\n댓글입니다댓글입니다\n댓글입니다",
            expandText: '더보기',
            prefixText: "박찬혁",
            onPrefixTap: () {
              print("박찬혁 페이지로 이동");
            },
            prefixStyle: const TextStyle(fontWeight: FontWeight.bold),
            collapseText: "접기",
            maxLines: 3,
            expandOnTextTap: true,
            collapseOnTextTap: true,
            linkColor: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget _replyTextBtn() {
    return GestureDetector(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          "댓글 199개 모두 보기",
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
      ),
    );
  }

  Widget _dateAgo() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Text(
        "1일전",
        style: TextStyle(color: Colors.grey, fontSize: 11),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _header(),
          const SizedBox(
            height: 15,
          ),
          _image(),
          const SizedBox(
            height: 15,
          ),
          _infoCount(),
          const SizedBox(
            height: 5,
          ),
          _infoDescription(),
          const SizedBox(
            height: 5,
          ),
          _replyTextBtn(),
          const SizedBox(
            height: 5,
          ),
          _dateAgo()
        ],
      ),
    );
  }
}
