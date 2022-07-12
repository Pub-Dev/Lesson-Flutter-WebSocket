import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    Key? key,
    required this.name,
    required this.message,
    this.direction = MessageDirection.from,
  }) : super(key: key);

  final String name;
  final String message;
  final MessageDirection direction;

  @override
  Widget build(BuildContext context) {
    return _MessageContainer(
      messageDirection: direction,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            message,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

enum MessageDirection {
  from,
  to,
}

class _MessageContainer extends Container {
  _MessageContainer({
    required Widget child,
    required MessageDirection messageDirection,
  }) : super(
          child: child,
          decoration: messageDirection == MessageDirection.from
              ? const BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                )
              : const BoxDecoration(
                  color: Color.fromARGB(255, 74, 200, 220),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
          margin: messageDirection == MessageDirection.from
              ? const EdgeInsets.fromLTRB(100, 10, 10, 10)
              : const EdgeInsets.fromLTRB(10, 10, 100, 10),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
        );
}
