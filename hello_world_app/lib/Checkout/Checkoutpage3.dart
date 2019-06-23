import 'package:flutter/material.dart';
import 'Checkoutpage2.dart';
Color c = const Color.fromARGB(0xAA, 0x00, 0x00,0x00);
Color cd = const Color.fromARGB(0xAA, 0x00, 0x00, 0x00);


class StepperTest3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Order Confirmed"),
          content: new Text("Thanks for Chosing Nouveau Apparels! \n we are commited to quality :) "),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Continue"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

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
        ],

      ),
        ),
        new Center(child: new Text(

          "Order Details",style: TextStyle(fontSize: 20),
        ),),
        new SizedBox(height: 20,),
        
       singlecard("AN Original Is Worth More","Rs 750","1","assets/tee1.jpg"),
        singlecard("I am Not Lazy ","Rs 700","1","assets/tee2.jpg"),
        singlecard("Army Men","Rs 550","2","assets/tee3.jpg"),

        new SizedBox(height: 20,),
        new Center(child: new Text(

          "Payment Details",style: TextStyle(fontSize: 20),
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
        ),      
        new SizedBox(height: 20,),
            new Center(child: new Text(
          "Shipping Address",style: TextStyle(fontSize: 20),
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
                    new Text("Muhammad Mujtaba",style:TextStyle(fontSize: 24.0,color: Colors.black87)),
                ],),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("0335-1911993",style:TextStyle(fontSize: 20.0,color: Colors.black54)),
                ],),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("165A BlockA Street9 SMCHS Karachi",style:TextStyle(fontSize: 20.0,color: Colors.black54)),
                ],),
                // new SizedBox(height: 3,),


                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text("Mujtaba_bawani@hotmail.com",style:TextStyle(fontSize: 20.0,color: Colors.black54)),
                ],),
              ],
            )
          ),
          alignment: Alignment.bottomCenter,
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
            _showDialog();
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


