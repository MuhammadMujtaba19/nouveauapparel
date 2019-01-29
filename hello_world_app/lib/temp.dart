import 'package:flutter/material.dart';
import 'dart:async';

Color cc=Colors.red;
bool tem=true;

class temp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(title: Text("Wait"),),
        body: pop(),
      ),
    );
  }
}

class pop extends StatefulWidget {
  @override
  _popState createState() => _popState();
}

class _popState extends State<pop> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation<double> animation;
  Animation<Color> animationColor;
  @override
  void initState(){
    super.initState();

    controller=AnimationController(vsync: this,duration: Duration(milliseconds: 500));
    animation=Tween<double>(begin: 100.0,end: 300.0).animate(controller);
    animationColor=ColorTween(begin: Colors.transparent,end: Colors.yellow,).animate(controller);

    animation.addListener((){
      setState(() {
          print(animation.value);
      });
    });

    animationColor.addListener((){
        setState(() {
                  print(animationColor.value);
                });
    });

    controller.forward();

  }

  @override
  Widget build(BuildContext context) {
    return Container(

      height: animation.value,
      width: animation.value,
      color: animationColor.value,

    );
  }
}

