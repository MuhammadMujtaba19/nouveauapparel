import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


Color c = const Color.fromARGB(0xFF, 0x2C, 0x53, 0x64);
Color cd = const Color.fromARGB(0xFF, 0x20, 0x3A, 0x43);

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
     Size screenSize = MediaQuery.of(context).size;
    return new Scaffold(
       appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Shopping Cart",
              style: TextStyle(color: cd),
            ),
          ),
        ),
    body:
    Container(
    child:new ListView(
      children: <Widget>[
       singlecard("AN Original Is Worth More","Rs 750","1","assets/tee1.jpg"),
        singlecard("I am Not Lazy ","Rs 700","1","assets/tee2.jpg"),
        singlecard("Army Men","Rs 550","2","assets/tee3.jpg"),

        new SizedBox(height: 20,),
        new Center(child: new Text(
          "Order Details",style: TextStyle(fontSize: 20),
        ),),
        new SizedBox(height: 20,),

        new Container(

          child:new Card(
            child: new Column(
              children: <Widget>[
                new SizedBox(height: 10,),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("Sub Total",style:TextStyle(fontSize: 20.0,color: Colors.grey)),
                    new Text("\Rs 2000",style:TextStyle(fontSize: 19.0,color: Colors.grey,fontWeight: FontWeight.w400))
                ],),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("Shipping Charges",style:TextStyle(fontSize: 20.0,color: Colors.grey)),
                    new Text("\Rs 100",style:TextStyle(fontSize: 19.0,color: Colors.grey,fontWeight: FontWeight.w400))
                ],),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("Discount",style:TextStyle(fontSize: 20.0,color: Colors.grey)),
                    new Text("\Rs 250",style:TextStyle(fontSize: 19.0,color: Colors.grey,fontWeight: FontWeight.w400))
                ],),
                // new SizedBox(height: 3,),
                new Container(
                  margin: const EdgeInsets.all(10.0),
                  // padding: const EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                    border: new Border(top:BorderSide(color: Colors.black38,width: 2),)
                  ),
                ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("Total Payable",style:TextStyle(fontSize: 23.0,color: Colors.black)),
                    new Text("\Rs 2350",style:TextStyle(fontSize: 22.0,color: Colors.black,fontWeight: FontWeight.w600))
                ],),
              ],
            )
          ),
          alignment: Alignment.bottomCenter,
        )
        ,
      ],
    )    
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

