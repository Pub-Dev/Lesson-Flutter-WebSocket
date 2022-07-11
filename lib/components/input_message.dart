import 'package:flutter/material.dart';

class InputMessage extends StatefulWidget {
  const InputMessage({
    Key? key,
    required this.onSendMessage,
  }) : super(key: key);

  final void Function(String) onSendMessage;

  @override
  State<InputMessage> createState() => _InputMessageState();
}

class _InputMessageState extends State<InputMessage> {
  String _message = '';
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 234, 234, 234),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              maxLines: 1,
              onChanged: (message) {
                _message = message;
              },
              onSubmitted: (_) => _sendMessage(),
            ),
          ),
          IconButton(
            onPressed: () => _sendMessage(),
            icon: const Icon(Icons.send),
          ),
        ],
      ),
    );
  }

  void _sendMessage() {
    widget.onSendMessage(_message);
    controller.text = '';
  }
}
