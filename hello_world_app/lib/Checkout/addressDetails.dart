import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return new Scaffold(
      appBar: new AppBar(title: new Text("Shipping Address"),leading: Icon(Icons.arrow_back)),
      body: SafeArea(child:
      new Container(
        padding: const EdgeInsets.all(20.0),
        child:new Container(
          height: screenSize.height,
          child:new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Wrap (
              alignment: WrapAlignment.end,
              spacing:10.0,
              runSpacing:20.0, 
              children:[
              new Text("Confirm Your Order Placement Details ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),)
              ]
              ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "EnterYour Name"),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Postal Address"),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Town/City"),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Phone Number(0321-xxxxxxx)"),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Email ID"),
            ),
            new Align(alignment: Alignment.bottomCenter,child:RaisedButton(
              color: Colors.green,
              onPressed: () {},
              child: const Text(
                'Continue --> ',
                style: TextStyle(fontSize: 20)
              ),
            ),
          )
        ]
      ),
    )
  
  )
)
);
  }}