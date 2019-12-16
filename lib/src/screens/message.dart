import 'package:anonymous_chat_mobile/src/widgets/message_card.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Message',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return RaisedButton(
                    color: Colors.white,
                    elevation: 0.0,
                    padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                    onPressed: () {},
                    child: MessageCard(
                        'https://picsum.photos/200/300?random=$index',
                        'user${index + 1}',
                        'content${index + 1}',
                        index + 1));
              }),
        ),
      ),
    );
  }
}
