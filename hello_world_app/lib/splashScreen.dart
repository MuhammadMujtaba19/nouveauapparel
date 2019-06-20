import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hello_world_app/HomePage.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();

}


class _SplashScreenState extends State<SplashScreen> {
  Future foo() async{
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) =>mainApplication()));
}
  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 2000), () {
      foo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
              color: Colors.black12,
              colorBlendMode: BlendMode.darken,
          )
        ],
      ),
    );
  }
}