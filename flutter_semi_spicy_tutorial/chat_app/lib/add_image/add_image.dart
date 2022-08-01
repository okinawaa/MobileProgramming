import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class AddImage extends StatefulWidget {
  const AddImage(this.addImageFunc, {Key? key}) : super(key: key);

  final Function(File pickedImage) addImageFunc;

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  File? pickedImage;

  void _pickImage() async {
    final imagePicker = ImagePicker(); // 패키지 사용
    final pickedImageFile = await imagePicker.pickImage(
        // 앨범에서 가져올 수도있음 이것은 카메라로 찍겠다는 것
        source: ImageSource.gallery,
        imageQuality: 50,
        maxHeight: 150);

    setState(() {
      if (pickedImageFile != null) {
        pickedImage = File(pickedImageFile.path);
      }
    });
    if(pickedImage != null) widget.addImageFunc(pickedImage!);
  }
 @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      width: 150,
      height: 300,
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.blue,
            backgroundImage: pickedImage !=null ? FileImage(pickedImage!) : null,
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton.icon(
            onPressed: () {
              _pickImage();
            },
            icon: const Icon(Icons.image),
            label: const Text('Add image'),
          ),
          const SizedBox(
            height: 80,
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
            label: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
