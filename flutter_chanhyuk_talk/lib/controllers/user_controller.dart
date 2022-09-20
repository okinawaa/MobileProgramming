import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_chanhyuk_talk/controllers/local_controller.dart';
import 'package:flutter_chanhyuk_talk/models/user.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class UserController extends GetxController {
  static UserController get to => Get.find();

  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static final FirebaseStorage _fireStorage = FirebaseStorage.instance;

  User? user;

  final Uuid _uuid = const Uuid();

  Future<bool> getUser(String id) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> data =
          await _firestore.collection("user").doc(id).get();
      user = User.fromJson({"id": data.id, ...data.data()!});
      update();
      return true;
    } catch (e) {
      print("유저 정보 불러오기 오류 $e");
      return false;
    }
  }

  Future<bool> registerUser({
    required String name,
    required String phone,
    required String email,
    required String password,
  }) async {
    try {
      String _id = _uuid.v4();
      await _firestore.collection("user").doc(_id).set({
        'name': name,
        'email': email,
        'password': password,
        'phone': phone,
        'chatRoomList': [],
        'imageUrl': ''
      });

      LocalController.to.setId(_id);
      user = User(
          id: _id,
          name: name,
          imageUrl: "",
          email: email,
          password: password,
          phone: phone,
          notificationToken: "",
          chatRoomList: []);

      return true;
    } catch (e) {
      print("회원가입 오류 $e");
      return false;
    }
  }

  Future<bool> loginUser(
      {required String email, required String password}) async {
    try {
      QuerySnapshot<Map<String, dynamic>> _loginData = await _firestore
          .collection("user")
          .where("email", isEqualTo: email)
          .where("password", isEqualTo: password)
          .get();

      if (_loginData.docs.isEmpty) return false;
      if (_loginData.docs.isNotEmpty) {
        user = User.fromJson(
            {"id": _loginData.docs.first.id, ..._loginData.docs.first.data()});
      }
      return true;
    } catch (e) {
      print("로그인 오류 $e");
      return false;
    }
  }
}
