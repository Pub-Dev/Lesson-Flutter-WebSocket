import 'package:flutter/material.dart';
import 'package:lesson_flutter_websocket/pages/chat_page.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChatPage(),
    );
  }
}
