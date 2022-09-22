import 'package:flutter/material.dart';
import 'package:flutter_chanhyuk_talk/screens/chat/chat_screen.dart';
import 'package:flutter_chanhyuk_talk/screens/home/home_screen.dart';
import 'package:flutter_chanhyuk_talk/screens/notification/notification_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPageIndex = 0;
  void _changePage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  Widget _getScreens() {
    switch (_currentPageIndex) {
      case 0:
        return HomeScreen(
          pageUpdateFunction: _changePage,
        );
      case 1:
        return const ChatScreen();
      case 2:
        return HomeScreen(
          pageUpdateFunction: _changePage,
        );
      default:
        return const NotificationScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text("chanhyuk talk"),
        elevation: 0,
      ),
      body: _getScreens(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _changePage,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'User',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'notifications',
          ),
        ],
      ),
    );
  }
}
