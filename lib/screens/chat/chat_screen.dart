import 'package:comunik_app/constants.dart';
import 'package:comunik_app/models/chat_message.dart';
import 'package:comunik_app/widgets/background.dart';
import 'package:flutter/material.dart';
import 'components/chat_input_field.dart';
import 'components/message.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chat',
          style: TextStyle(color: kPrimaryColor),
        ),
        elevation: 0,
        backgroundColor: kSecondaryBackgroundColor,
      ),
      body: Stack(
        children: [
          Background(),
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                      itemCount: demeChatMessages.length,
                      itemBuilder: (context, index) =>
                          Message(message: demeChatMessages[index])),
                ),
              ),
              ChatInputField()
            ],
          )
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus status;

  const MessageStatusDot({Key key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return Colors.red;
          break;

        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1.color.withOpacity(0.1);
          break;

        case MessageStatus.viewed:
          return kPrimaryColor;
          break;

        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: EdgeInsets.only(left: 20 / 2),
      height: 12,
      width: 12,
      decoration:
          BoxDecoration(color: dotColor(status), shape: BoxShape.circle),
      child: Icon(
        status == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
