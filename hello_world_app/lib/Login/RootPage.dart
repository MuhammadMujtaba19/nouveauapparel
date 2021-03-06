
import 'package:flutter/material.dart';
import 'package:hello_world_app/Login/Login.dart';
import 'package:hello_world_app/Login/Authentication.dart';
import 'package:hello_world_app/HomePage.dart';
import 'package:hello_world_app/splashScreen.dart';

class RootPage extends StatefulWidget {
  RootPage({this.auth});
  final BaseAuth auth;

  @override
  _RootPageState createState() => _RootPageState();
}

enum AuthStatus {
  notSignedIn,
  signedIn
}

class _RootPageState extends State<RootPage> {

  AuthStatus authStatus = AuthStatus.notSignedIn;

  @override
  void initState() {
    super.initState();
    widget.auth.currentUser().then((userId){
      setState(() {
        authStatus = userId == null ? AuthStatus.notSignedIn : AuthStatus.signedIn;
      });
    });
  }

  void _signedIn(){
    setState(() {
      authStatus = AuthStatus.signedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (authStatus == AuthStatus.notSignedIn)
      return new LoginPage();
    else
      return new SplashScreen();
  }
}