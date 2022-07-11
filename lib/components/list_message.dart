import 'package:flutter/material.dart';
import 'package:lesson_flutter_websocket/entities/message_entity.dart';

import 'message_from.dart';
import 'message_to.dart';

class ListMessageView extends StatelessWidget {
  const ListMessageView({
    Key? key,
    required this.messages,
  }) : super(key: key);

  final List<Message> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];

        if (message.direction == MessageDirection.from) {
          return MessageFrom(
            name: message.name,
            message: message.text,
          );
        }
        return MessageTo(
          name: message.name,
          message: message.text,
        );
      },
    );
  }
}