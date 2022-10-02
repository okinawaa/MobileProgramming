import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hive_tutorial/model/word.dart';
import 'package:hive/hive.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  String engWord = '';
  String korWord = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("단어 추가")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(children: [
          Expanded(
            child: Column(
              children: [
                TextField(
                  onChanged: (val) {
                    engWord = val;
                  },
                  decoration: const InputDecoration(labelText: "영어 단어"),
                ),
                TextField(
                  onChanged: (val) {
                    korWord = val;
                  },
                  decoration: const InputDecoration(labelText: "한글 단어"),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () async {
                    final box = Hive.box<Word>('word');
                    int id = 0;

                    if (box.isNotEmpty) {
                      final prevItem = box.getAt(box.length - 1);
                      if (prevItem != null) id = prevItem.id + 1;
                    }

                    box.put(
                        id,
                        Word(
                            id: id,
                            engWord: engWord,
                            korWord: korWord,
                            correctCount: 0));

                    Navigator.of(context).pop();
                  },
                  child: const Text("저장"),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
