import 'package:flutter/material.dart';
import 'package:lesson_flutter_websocket/components/input_message.dart';
import 'package:lesson_flutter_websocket/components/list_message.dart';
import 'package:lesson_flutter_websocket/entities/message_entity.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat do Pub Dev'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListMessageView(
              messages: [
                Message(
                  name: 'name',
                  text: 'text',
                  direction: MessageDirection.from,
                ),
                Message(
                  name: 'name',
                  text: 'text',
                  direction: MessageDirection.to,
                ),
              ],
            ),
          ),
          InputMessage(
            onSendMessage: (message) {},
          ),
        ],
      ),
    );
  }
}
