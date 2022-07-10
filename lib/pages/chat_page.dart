import 'package:flutter/material.dart';

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
            child: ListView(
              children: const [
                ListTile(
                  title: Text('Nome da pessoa'),
                  subtitle: Text('Ola, tudo bom?'),
                ),
                ListTile(
                  title: Text('Nome da pessoa'),
                  subtitle: Text('Ola, tudo bom?'),
                ),
                ListTile(
                  title: Text('Nome da pessoa'),
                  subtitle: Text('Ola, tudo bom?'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 5,
            ),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    maxLines: 1,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
