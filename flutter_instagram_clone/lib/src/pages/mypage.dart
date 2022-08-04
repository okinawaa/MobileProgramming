import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_instagram_clone/src/components/avatar_widget.dart';
import 'package:flutter_instagram_clone/src/components/image_data.dart';
import 'package:flutter_instagram_clone/src/components/user_card.dart';
import 'package:flutter_instagram_clone/src/controller/mypage_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// 퍼블리싱 공부
// 내가 로그인했으니, 나의 페이지에 나의 정보가 동적으로 보여진다.(not hardcoding);
class MyPage extends GetView<MypageController> {
  const MyPage({Key? key}) : super(key: key);

  // 같은 구조 위젯화
  Widget _statisticsOne(String title, int value) {
    return Column(
      children: [
        Text(
          value.toString(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }

  Widget _information() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AvatarWidget(
                  type: AvatarType.TYPE3,
                  thumbPath: controller.targetUser.value.thumbnail!,
                  size: 80,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: _statisticsOne("Post", 15)),
                    Expanded(child: _statisticsOne("Followers", 121)),
                    Expanded(child: _statisticsOne("Following", 33)),
                  ],
                ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              controller.targetUser.value.description!,
              style: const TextStyle(fontSize: 13),
            )
          ],
        ),
      ),
    );
  }

  // 두개의 버튼
  Widget _menu() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: Row(
        children: [
          // 왼쪽 버튼이 남는 공간 다 차지해야하므로 Expanded로 감싸준다.
          Expanded(
            // 컨테이너를 이용해 보더나 전체적인 틀을 잡은뒤에 child 로 Text를쓰는형식
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: const Color(0xffdedede))),
              child: const Text(
                "Edit Profile",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                  color: const Color(0xffdedede),
                ),
                color: const Color(0xffefefef)),
            child: ImageData(IconsPath.addFriend),
          ),
        ],
      ),
    );
  }

  // 추천 사람들 가로스크롤
  Widget _discoverPeople() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Discover People",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: List.generate(
              10,
              (index) => UserCard(
                userId: '개남$index',
                description: '개남e$index님이 팔로우합니다.',
              ),
            ).toList(),
          ),
        ),
      ],
    );
  }

  Widget _tabMenu() {
    return TabBar(
      controller: controller.tabController,
      indicatorColor: Colors.black,
      indicatorWeight: 1,
      tabs: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ImageData(IconsPath.gridViewOn),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ImageData(IconsPath.myTagImageOff),
        ),
      ],
    );
  }

  Widget _tabView() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 100,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.grey,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Obx(
          () => Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              controller.targetUser.value.nickname!,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: ImageData(
              IconsPath.uploadIcon,
              width: 50,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ImageData(
                IconsPath.menuIcon,
                width: 50,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _information(),
            _menu(),
            _discoverPeople(),
            const SizedBox(height: 20),
            _tabMenu(),
            _tabView(),
          ],
        ),
      ),
    );
  }
}
