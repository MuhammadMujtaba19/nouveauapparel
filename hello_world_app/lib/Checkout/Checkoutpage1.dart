import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Checkoutpage2.dart';

Color c = const Color.fromARGB(0xAA, 0x00, 0x00,0x00);
Color cd = const Color.fromARGB(0xAA, 0x00, 0x00, 0x00);
class Checkout1 extends StatelessWidget {
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

  body:new ListView(
      children: <Widget>[
        new SizedBox(height: 15,),
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
        
       singlecard("AN Original Is Worth More","Rs 750","1","assets/tee1.jpg"),
        singlecard("I am Not Lazy ","Rs 700","1","assets/tee2.jpg"),
        singlecard("Army Men","Rs 550","2","assets/tee3.jpg"),

        new SizedBox(height: 20,),
        new Row(
        mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        new Container(
          width: MediaQuery.of(context).size.width/4,
          height: 50,
          child: new FlatButton(
            onPressed: (){},
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
              MaterialPageRoute(builder: (context) => StepperTest2()),);
            },
              child: Text("Next"),
              color: Color.fromARGB(0xDD, 0x00, 0x00, 0x00),
               textColor: Colors.white,),
        ),
      ],
      )
     
      ],
    )    
  );
 }
 
Widget singlecard(String productName,String price,String productQty, String productImage){
    return new Container(
      height: 120,
      child: new Column(
        children: <Widget>[
          new Card(
            child:new Container(
              height: 110,
            child: new Row(
              children: <Widget>[
               new Container(
                padding: EdgeInsets.only(right: 15,left: 15,top:5),
                //  height: 95,
                //  width: 95,
                child: new Image(
                 height: 85,
                 width: 85,
                    image: new AssetImage(productImage),
                    fit: BoxFit.cover,
                  ),
               ),
               new Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                  new SizedBox(height: 5,),
                  new Text(
                    productName,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black54),
                  ),
                  new SizedBox(height: 2,),
                  new Text(
                    "Qty:"+productQty,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.black54),
                  ),
                  new SizedBox(height: 2,),
                   new Text(
                    price,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black),
                  ),
                   new Row(
                     children: <Widget>[
                      FlatButton.icon(
                        icon: Icon(Icons.delete,color: Colors.black38,),
                        onPressed: (){},
                        label: Text('Remove'),
                        color: Colors.white,
                      ),
                      new SizedBox(width: 14,),
                      FlatButton.icon(
                        icon: Icon(Icons.edit,color: Colors.black38,),
                        onPressed: (){},
                        label: Text('Edit'),
                        color: Colors.white,
                      )
                   ],
                   ) 
                 ],
               )
              ],
            ),
          ),
          ),
        ],
      ),
    );      
    
 }

}
