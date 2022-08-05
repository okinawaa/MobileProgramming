import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_instagram_clone/src/models/post.dart';

class PostRepository {
  // post
  static Future<void> updatePost(Post postData) async {
    await FirebaseFirestore.instance.collection('posts').add(postData.toMap());
  }

  // get
  static Future<List<Post>> loadFeedList() async {
    Query<Map<String, dynamic>> document = FirebaseFirestore.instance
        .collection('posts')
        .orderBy('createdAt', descending: true)
        .limit(10);
    QuerySnapshot<Map<String, dynamic>> data = await document.get();
    return data.docs.map<Post>((e) => Post.fromJson(e.id, e.data())).toList();
  }
}
