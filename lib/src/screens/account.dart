import 'package:flutter/material.dart';

class Account extends StatelessWidget {
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
                    onTap: () {},
                    title: Text('Sign Out'),
                  ),
                ],
              ))),
    );
  }
}
