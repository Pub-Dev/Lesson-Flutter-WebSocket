class Message {
  Message({
    required this.name,
    required this.text,
  });

  final String name;
  final String text;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'text': text,
    };
  }

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        name: json['name'],
        text: json['text'],
      );
}
