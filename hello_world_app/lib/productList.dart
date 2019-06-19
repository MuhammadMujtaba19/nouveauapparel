import 'package:flutter/material.dart';
class productListPage extends StatefulWidget{
  @override
  State createState() => new ProductList();
}
class ProductList extends State<productListPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Text("Mens Collection"),
          elevation: 0.0,
          backgroundColor: Colors.grey,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.black,),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
              color: Colors.black,
            )
          ],
        ),

        body: ListView(
            primary: true,
            shrinkWrap: true,
            children:<Widget>
            [
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>
                  [
                    Padding(padding:const EdgeInsets.all(4.0),
                      child: ChoiceChip(label: new Text("Graphic Tees"),selected:false),),

                    Padding(padding:const EdgeInsets.all(4.0),
                      child: ChoiceChip(label: new Text("DeminJeans"), selected:false),),

                    Padding(padding:const EdgeInsets.all(4.0),
                      child: ChoiceChip(label: new Text("Polo Shirt"), selected:false),)
                  ]
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>
                  [
                    singlecard("London Tshirt ",499,600,true,'https://images.unsplash.com/photo-1491592459486-f04f965504d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                    singlecard("London Tshirt ",499,600,false,'https://images.unsplash.com/photo-1532998401395-ceecc5c20059?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),

                  ]
              ),
              new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>
                  [

                    singlecard("London Tshirt ",499,600,false,'https://images.unsplash.com/photo-1485218126466-34e6392ec754?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                    singlecard("London Tshirt ",499,600,true,'https://images.unsplash.com/photo-1523049989481-ae3939b52b9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),

                  ]
              ),

            ]

        )
    );
  }
  Widget singlecard(String Productname, int discprice,int saleprice,bool isfavourite,String Imagepath){
    return new Card(
      child: Container(
          height:260,
          width:150.0,
          margin:EdgeInsets.all(10),
          child:Column(
            children: <Widget>[
              new Container(
                  height:150,
                  width:150,
                  alignment: Alignment.centerLeft,

                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(Imagepath)),

                  )
              ),
              new Container (

                  alignment: Alignment.centerLeft,
                  child : Text(Productname,textAlign: TextAlign.start)
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Rs. ${discprice}",style: TextStyle(color:Colors.black, fontSize: 13.0,fontWeight: FontWeight.w700)),
                  SizedBox(width:5),
                  Text("Rs .${saleprice}",style: TextStyle(color:Colors.red, fontSize: 10.0,fontStyle: FontStyle.italic))
                ],
              ),
              new Container(
                alignment: Alignment.centerLeft,
                child: Text("17% off",style: TextStyle(color:Colors.green, fontSize: 10.0),),
              ),
              new Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    onPressed: (){},
                    icon: isfavourite ? Icon(Icons.favorite_border, color:Colors.red, size: 15, ) :Icon(Icons.favorite_border, color:Colors.grey, size: 15, )  ,

                  ),
                  SizedBox(width:35),

                  IconButton(
                      onPressed: (){},
                      icon:Icon(Icons.share,color:Colors.grey,size: 15, )
                  )
                ],
              )

            ],
          )
      ),
      elevation: 3.0,
    );
  }
}
