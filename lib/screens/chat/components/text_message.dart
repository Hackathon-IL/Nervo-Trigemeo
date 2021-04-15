import 'package:comunik_app/constants.dart';
import 'package:comunik_app/models/chat_message.dart';
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  final ChatMessage message;

  const TextMessage({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20 * 0.75, vertical: 20 / 2),
        decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.1),
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          message.text,
          style: TextStyle(
              color: message.isSender
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyText1.color),
        ));
  }
}
