import 'package:flutter/material.dart';
import 'Checkoutpage3.dart';
import 'Checkoutpage1.dart';
Color c = const Color.fromARGB(0xAA, 0x00, 0x00,0x00);
Color cd = const Color.fromARGB(0xAA, 0x00, 0x00, 0x00);


class StepperTest2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: new AppBar(
          title: Text("Check out "),
          elevation: 0.0,
          backgroundColor: cd,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.black,),
          
        ),

       body:new Container(
         height: MediaQuery.of(context).size.height,
         child: new Column(
           children: <Widget>[
    new Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(left: 2),
          width: MediaQuery.of(context).size.width,
        child: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
            new Container(
              width: 25,
              height: 25,
              decoration: new BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
        ),
          new Container(
              width: 140.0,
              height: 25.0,
              margin: const EdgeInsets.only(bottom:15.0),
              decoration: new BoxDecoration(
                border: new Border(bottom:BorderSide(color: Colors.black87,width: 5),)
              ),
          ),
           new Container(
              width: 25,
              height: 25,
              decoration: new BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
        ),
          new Container(
              width: 140.0,
              height: 25.0,
              margin: const EdgeInsets.only(bottom:15.0),
              decoration: new BoxDecoration(
                border: new Border(bottom:BorderSide(color: Colors.grey,width: 5),)
              ),
          ),
          new Container(
              width: 25.0,
              height: 25.0,
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(25.0),
                border: new Border.all(
                  width: 5.0,
                  color: Colors.black,
                ),
              ),
            ),
        ],
        ),
      ),
        new Container(
  height: MediaQuery.of(context).size.height-170,
    child:new ListView(
      children: <Widget>[
        new SizedBox(height: 15,),
           new SafeArea(
        child:
      new Container(
        padding: const EdgeInsets.only(left:20.0,right:20.0,bottom:20.0),
        child:new Container(
          height: MediaQuery.of(context).size.height,
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
        ]
      ),
    )
  
  )
),
       new SizedBox(height: 20,),
     
      ]
      )
        ),
          new Row(
        mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        new Container(
          width: MediaQuery.of(context).size.width/4,
          height: 50,
          child: new FlatButton(
            onPressed: (){
              Navigator.pop(context);
            },
              child: Text("Previous"),
              color: cd,
              textColor: Colors.white,

          ),
        ),
        new Container(
          height: 50,
          width: MediaQuery.of(context).size.width- MediaQuery.of(context).size.width/4,
          child: new FlatButton(
            onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => StepperTest3()),);
            },
              child: Text("Next"),
              color: Color.fromARGB(0xDD, 0x00, 0x00, 0x00),
               textColor: Colors.white,),
        ),
      ],
      )
     
           ]
      ),
       )
    );
  }
}
