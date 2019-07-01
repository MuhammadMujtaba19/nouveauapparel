import 'package:flutter/material.dart';
import 'package:hello_world_app/HomePage.dart';
import 'package:hello_world_app/Login/RootPage.dart';
import 'package:hello_world_app/Login/Authentication.dart';
import 'package:hello_world_app/test.dart';

void main(){
  runApp(new MyApp()) ;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
    //  home:  RootPage(auth: new Auth()),
    home: mainApplication(),
    );
  }
}


