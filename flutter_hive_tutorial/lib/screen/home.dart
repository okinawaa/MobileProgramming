import 'package:flutter/material.dart';
import 'package:flutter_hive_tutorial/component/word_card.dart';
import 'package:flutter_hive_tutorial/model/word.dart';
import 'package:flutter_hive_tutorial/screen/add.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HIVE TUTORIAL")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const AddScreen()));
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // hive 에서 값 변화 관찰하는 위젯
        child: ValueListenableBuilder(
          valueListenable: Hive.box<Word>('word').listenable(),
          builder: ((context, Box<Word> box, child) {
            return ListView.builder(
              itemBuilder: (_, index) {
                final item = box.getAt(index);
                if (item == null) {
                  return const Text("아이템이 존재하지 않습니다.");
                } else {
                  return WordCard(
                      onBodyTap: () {
                        Get.snackbar(item.engWord, item.korWord);
                      },
                      onCheckTap: () {
                        box.put(item.id,
                            item.copyWith(correctCount: item.correctCount + 1));
                      },
                      engWord: item.engWord,
                      korWord: item.korWord,
                      correctCount: item.correctCount);
                }
              },
              itemCount: box.values.length,
            );
          }),
        ),
      ),
    );
  }
}
