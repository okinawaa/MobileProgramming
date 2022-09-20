import 'package:cloud_firestore/cloud_firestore.dart';

class StreamUtils {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Map<String, dynamic>>> getUserStream() {
    // 빨대 꽃기
    return _firestore.collection("user").snapshots();
  }
}
