class ChatRoom {
  final String id;
  final List userIdList;
  final List userList;
  final String lastMessage;
  final String lastMessageTimeStamp;
  final String timeStamp;

  ChatRoom({
    required this.id,
    required this.userIdList,
    required this.userList,
    required this.lastMessage,
    required this.lastMessageTimeStamp,
    required this.timeStamp,
  });

  factory ChatRoom.fromJson(json) => ChatRoom(
        id: json['id'],
        userIdList: json['userIdList'],
        userList: json['userList'],
        lastMessage: json['lastMessage'],
        lastMessageTimeStamp: json['lastMessageTimeStamp'],
        timeStamp: json['timeStamp'],
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userIdList': userIdList,
      'userList': userList,
      'lastMessage': lastMessage,
      'lastMessageTimeStamp': lastMessageTimeStamp,
      'timeStamp': timeStamp,
    };
  }
}
