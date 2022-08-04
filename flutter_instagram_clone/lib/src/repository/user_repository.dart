import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_instagram_clone/src/models/instagram_user.dart';

class UserRepository {
  static Future<IUser?> loginUserByUid(String uid) async {
    var data = await FirebaseFirestore.instance
        .collection('users')
        .where('uid', isEqualTo: uid)
        .get();

    if (data.size == 0) {
      return null;
    } else {
      return IUser.fromJson(data.docs.first.data());
    }
  }

  static Future<bool> signup(IUser user) async {
    // 회원가입 하는 절차 firebase 에서 add method 는 Map spec 으로 받게 되어있다.
    try {
      await FirebaseFirestore.instance.collection('users').add(user.toMap());
      return true;
    } catch (e) {
      return false;
    }
  }
}
