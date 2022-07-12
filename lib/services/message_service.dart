import 'dart:convert';

import 'package:lesson_flutter_websocket/entities/message_entity.dart';
import 'package:web_socket_channel/io.dart';

class MessageService {
  late IOWebSocketChannel channel;

  Future initConnection() async {
    channel = IOWebSocketChannel.connect(
      'wss://demo.piesocket.com/v3/channel_1?api_key=VCXCEuvhGcBDP7XhiJJUDvR1e1D3eiVjgZ9VRiaV',
      headers: {},
      pingInterval: const Duration(seconds: 5),
    );
  }

  Future _retryConnection({
    required void Function(Message) onReceive,
  }) async {
    await Future.delayed(const Duration(seconds: 5));
    await initConnection();
    await broadcastNotifications(
      onReceive: onReceive,
    );
  }

  Future broadcastNotifications({
    required void Function(Message) onReceive,
  }) async {
    channel.stream.listen(
      (event) {
        final Map<String, dynamic> json = jsonDecode(event);
        final message = Message.fromJson(json);
        onReceive(message);
      },
      onError: (_) async {
        _retryConnection(onReceive: onReceive);
      },
      onDone: () async {
        _retryConnection(onReceive: onReceive);
      },
      cancelOnError: true,
    );
  }

  void sendMessage(Message message) {
    channel.sink.add(jsonEncode(message.toJson()));
  }
}
