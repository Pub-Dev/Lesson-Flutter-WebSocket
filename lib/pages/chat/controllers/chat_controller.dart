import 'package:lesson_flutter_websocket/entities/message_entity.dart';
import 'package:mobx/mobx.dart';

part 'chat_controller.g.dart';

class ChatController = ChatControllerBase with _$ChatController;

abstract class ChatControllerBase with Store {
  @observable
  ObservableList<Message> messages = ObservableList<Message>();

  @action
  void sendMessage(String message) {
    messages.add(
      Message(
        name: 'Naga',
        text: message,
        direction: MessageDirection.from,
      ),
    );
  }
}
