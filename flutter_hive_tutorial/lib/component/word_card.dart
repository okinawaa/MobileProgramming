import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  // 단어의 몸통을 클릭
  final GestureTapCallback onBodyTap;
  final GestureTapCallback onCheckTap;
  final String engWord;
  final String korWord;
  final int correctCount;

  const WordCard(
      {Key? key,
      required this.onBodyTap,
      required this.onCheckTap,
      required this.engWord,
      required this.korWord,
      required this.correctCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onBodyTap,
          child:
              Column(children: [Text(engWord), Text('맞은 횟수 : $correctCount')]),
        )),
        GestureDetector(
          onTap: onCheckTap,
          child: const Icon(Icons.check),
        )
      ],
    );
  }
}
