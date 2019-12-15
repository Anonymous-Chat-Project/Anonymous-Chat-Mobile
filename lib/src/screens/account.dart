import 'package:anonymous_chat_mobile/src/screens/welcome.dart';
import 'package:anonymous_chat_mobile/src/services/auth.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  final FirebaseAuthentication _auth = new FirebaseAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
          child: Container(
              child: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {},
            title: Text('Account'),
          ),
          ListTile(
            onTap: () async {
              await _auth.signOut();
              await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => WelcomeScreen()));
            },
            title: Text('Sign Out'),
          ),
        ],
      ))),
    );
  }
}
