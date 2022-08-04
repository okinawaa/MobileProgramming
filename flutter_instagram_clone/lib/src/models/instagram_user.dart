class IUser {
  String? uid;
  String? nickname;
  String? thumbnail;
  String? description;

  IUser({this.uid, this.nickname, this.thumbnail, this.description});

  factory IUser.fromJson(Map<String, dynamic> json) {
    return IUser(
      uid: json['uid'] == null ? '' : json['uid'] as String,
      nickname: json['nickname'] == null ? '' : json['nickname'] as String,
      thumbnail: json['thumbnail'] == null ? '' : json['thumbnail'] as String,
      description:
          json['description'] == null ? '' : json['description'] as String,
    );
  }

  // 외부에서 스펙을 map으로 바꿔줘야 하는경우
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'nickname': nickname,
      'thumbnail': thumbnail,
      'description': description,
    };
  }

  // 외부에서 값 하나 변할시 바로 property 를 바꿀 수 있지만, immutable 하게 유지.
  IUser copyWith({
    String? uid,
    String? nickname,
    String? thumbnail,
    String? description,
  }) {
    return IUser(
      uid: uid ?? this.uid,
      nickname: nickname ?? this.nickname,
      thumbnail: thumbnail ?? this.thumbnail,
      description: description ?? this.description,
    );
  }
}
