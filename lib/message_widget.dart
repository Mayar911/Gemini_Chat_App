import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget(
      {super.key, required this.text, required this.isFromUser});
  final String text;
  final bool isFromUser;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isFromUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        margin: const EdgeInsets.only(bottom: 8, left: 10, right: 10),
        constraints:
            const BoxConstraints(maxWidth: 520), // Constrains max width
        decoration: BoxDecoration(
          color: isFromUser
              ? Theme.of(context).primaryColor
              : Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: MarkdownBody(data: text),
      ),
    );
  }
}
