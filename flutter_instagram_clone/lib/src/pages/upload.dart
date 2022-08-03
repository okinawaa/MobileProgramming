import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_instagram_clone/src/components/image_data.dart';
import 'package:get/get.dart';

class Upload extends StatelessWidget {
  const Upload({Key? key}) : super(key: key);

  Widget _imagePreview() {
    double width = Get.width;
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: Get.back,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ImageData(IconsPath.closeImage),
          ),
        ),
        title: const Text(
          "New Post",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          _imagePreview(),
        ],
      ),
    );
  }
}
