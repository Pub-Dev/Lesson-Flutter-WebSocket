import 'package:flutter/material.dart';
import 'package:lesson_flutter_websocket/components/message.dart';

class MessageTo extends StatelessWidget {
  const MessageTo({
    Key? key,
    required this.name,
    required this.message,
  }) : super(key: key);

  final String name;
  final String message;

  @override
  Widget build(BuildContext context) {
    return MessageWidget(
      name: name,
      message: message,
      direction: MessageDirection.to,
    );
  }
}
