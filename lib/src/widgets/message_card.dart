import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  String _avatarUri = '';
  String _username = '';
  String _content = '';
  int _time = 0;

  MessageCard(String avatarUri, String username, String content, int time) {
    this._avatarUri = avatarUri;
    this._username = username;
    this._content = content;
    this._time = time;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  child: Image.network(
                    _avatarUri,
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(_username),
                    Text(_content),
                  ],
                ),
              ),
            ],
          ),
          Text('$_time phut truoc')
        ],
      ),
    );
  }
}
