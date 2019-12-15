import 'package:anonymous_chat_mobile/src/navigators/app_navigator.dart';
import 'package:anonymous_chat_mobile/src/screens/signin.dart';
import 'package:anonymous_chat_mobile/src/screens/signup.dart';
import 'package:anonymous_chat_mobile/src/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  void _onSignIn() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SignIn()
      )
    );
  }

  void _onSignUp() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SignUp()
      )
    );
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Welcome Screen'),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: _onSignIn,
                  color: Colors.blue,
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: _onSignUp,
                  color: Colors.blue,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
