import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:quiver/iterables.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // 3 columns
  List<List<int>> groupBox = [[], [], []];

  // for balance
  List<int> groupIndex = [0, 0, 0];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 100; i++) {
      var gi = groupIndex.indexOf(min<int>(groupIndex)!);
      var size = 1;
      if (gi != 1) {
        size = Random().nextInt(100) % 2 == 0 ? 1 : 2;
      }
      groupBox[gi].add(size);
      groupIndex[gi] += size;
    }
  }

  Widget _appbar() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              margin: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xffefefef)),
              child: Row(children: const [
                Icon(Icons.search),
                Text(
                  "검색",
                  style: TextStyle(fontSize: 15, color: Color(0xff838383)),
                )
              ]),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(Icons.location_pin),
        )
      ],
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          groupBox.length,
          (index) => Expanded(
            child: Column(
              children: List.generate(
                groupBox[index].length,
                (jndex) => Container(
                  height: Get.width * 0.33 * groupBox[index][jndex],
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: CachedNetworkImage(
                    imageUrl: "https://picsum.photos/200",
                    fit: BoxFit.cover,
                  ),
                ),
              ).toList()
            ),
          ),
        ).toList()
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          // appbar can be scrolled
          _appbar(),
            Expanded(child: _body()),
        ],
      )),
    );
  }
}
