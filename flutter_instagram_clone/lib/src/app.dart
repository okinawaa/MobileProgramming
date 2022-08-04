import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/src/components/image_data.dart';
import 'package:flutter_instagram_clone/src/controller/bottom_nav_controller.dart';
import 'package:flutter_instagram_clone/src/pages/active_history.dart';
import 'package:flutter_instagram_clone/src/pages/home.dart';
import 'package:flutter_instagram_clone/src/pages/mypage.dart';
import 'package:flutter_instagram_clone/src/pages/search.dart';
import 'package:flutter_instagram_clone/src/pages/upload.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class App extends GetView<BottomNavController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: controller.willPopAction,
        child: Obx(
          () => Scaffold(
            body: IndexedStack(
              index: controller.pageIndex.value,
              children: [
                const Home(),
                // 검색 페이지는 중첩 라우팅을 위해서 Get Route 사용하지 않는다.
                Navigator(
                  key: controller.searchPageNavigationKey,
                  onGenerateRoute: (routeSetting) {
                    return MaterialPageRoute(
                        builder: (context) => const Search());
                  },
                ),
                Container(
                  child: Center(child: Text("MYPAGE")),
                ),
                const ActiveHistory(),
                const MyPage(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: controller.pageIndex.value,
              elevation: 0,
              onTap: controller.changeBottomNav,
              items: [
                BottomNavigationBarItem(
                    icon: ImageData(IconsPath.homeOff),
                    activeIcon: ImageData(IconsPath.homeOn),
                    label: "home"),
                BottomNavigationBarItem(
                    icon: ImageData(IconsPath.searchOff),
                    activeIcon: ImageData(IconsPath.searchOn),
                    label: "search"),
                BottomNavigationBarItem(
                    icon: ImageData(IconsPath.uploadIcon), label: "upload"),
                BottomNavigationBarItem(
                    icon: ImageData(IconsPath.activeOff),
                    activeIcon: ImageData(IconsPath.activeOn),
                    label: "active"),
                BottomNavigationBarItem(
                    icon: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                    label: "user"),
              ],
            ),
          ),
        ));
  }
}
