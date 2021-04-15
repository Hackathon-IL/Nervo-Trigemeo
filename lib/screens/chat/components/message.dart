import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/chat_message.dart';
import 'audio_message.dart';
import 'text_message.dart';
import 'video_message.dart';

class Message extends StatelessWidget {
  final ChatMessage message;

  const Message({Key key, @required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
          break;

        case ChatMessageType.audio:
          return AudioMessage(message: message);
          break;

        case ChatMessageType.video:
          return VideoMessage();
          break;

        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            Container(
              height: 24,
              width: 24,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
            ),
            // CircleAvatar(
            //   radius: 12,
            //   backgroundImage: SvgPicture.asset("assets/images/user.png"),
            // ),
            SizedBox(
              width: 20 / 2,
            )
          ],
          messageContaint(message),
          if (message.isSender) MessageStatusDot(status: message.messageStatus)
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
