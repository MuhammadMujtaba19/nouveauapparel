import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
Color cd = const Color.fromARGB(0xAA, 0x00, 0x00, 0x00);

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
          appBar: new AppBar(
          title: Text("MY Profile "),
          elevation: 0.0,
          backgroundColor: cd,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.black,),
          
        ),

  body:new Text("Idhar bande ki profile ayegi"
  )
  );  
  }
}