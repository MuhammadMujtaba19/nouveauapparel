import 'package:flutter/material.dart';
import 'Login/Login.dart';

void main(){
  runApp(new MyApp()) ;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}


