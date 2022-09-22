class Chat {
  final String id;
  final String senderId;
  final String message;
  final String messageType;
  final String timeStamp;

  Chat({
    required this.id,
    required this.senderId,
    required this.message,
    required this.messageType,
    required this.timeStamp,
  });

  factory Chat.fromJson(json) => Chat(
    id: json['id'],
    senderId: json['senderId'],
    message: json['message'],
    messageType: json['messageType'],
      timeStamp:json['timeStamp']
  );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'senderId':senderId,
      'message':message,
      'messageType':messageType,
      'timeStamp':timeStamp,
    };
  }
}
