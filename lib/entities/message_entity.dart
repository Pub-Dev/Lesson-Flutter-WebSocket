class Message {
  Message({
    required this.name,
    required this.text,
    required this.direction,
  });

  final String name;
  final String text;
  final MessageDirection direction;
}

enum MessageDirection {
  from,
  to,
}
