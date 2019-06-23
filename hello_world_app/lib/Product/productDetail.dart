import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
// Color cd = const Color.fromARGB(0xFF, 0x20, 0x3A, 0x43);
// Color c = const Color.fromARGB(0xFF, 0x2C, 0x53, 0x64);

Color cd = const Color.fromARGB(0xBB, 0x00, 0x00, 0x00);
Color c = const Color.fromARGB(0xBB, 0x00, 0x00, 0x00);
class ImageCarousel extends StatefulWidget {

  String itemImage;

  ImageCarousel(this.itemImage);

  _ImageCarouselState createState() => new _ImageCarouselState(this.itemImage);
}

class _ImageCarouselState extends State<ImageCarousel> with SingleTickerProviderStateMixin {
  String itemImage;
  _ImageCarouselState(this.itemImage);

  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = new Tween(begin: 0.0, end: 18.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    Widget carousel = new Carousel(
      boxFit: BoxFit.fitWidth,
      images: [
        NetworkImage(itemImage),
        NetworkImage(itemImage),
        NetworkImage(itemImage),
        NetworkImage(itemImage),
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 1),
    );

    // Widget banner = new Padding(
    //   padding: const EdgeInsets.only(top: 2.0, left: 20.0),
    //     child: new Container(
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.only(
    //             topLeft: Radius.circular(15.0),
    //             bottomRight: Radius.circular(15.0)),
    //         color: Colors.amber.withOpacity(0.5),
    //       ),
    //       padding: const EdgeInsets.all(0.0),
    //       child: new Text(
    //         'Banner on top of carousel',
    //         style: TextStyle(
    //           fontFamily: 'fira',
    //           fontSize: animation.value,//18.0,
    //           //color: Colors.white,
    //         ),
    //       ),
    //     ),
    //   // ),
    // //  ),
    // );

    return new Container(
      child: new Center(
        child: new Container(
          padding: const EdgeInsets.all(0.0),
          height: screenHeight / 2,
          child:  new ClipRRect(
            borderRadius: BorderRadius.circular(1.0),
            child: new Stack(
              children: [
                carousel,
                // banner,
              ],
            ),
          ),
        ),
      ),
    );
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}


class ProductPage extends StatefulWidget {

String itemName,itemImage,itemSubname,itemPrice, itemRating;
  ProductPage(this.itemName, this.itemImage, this.itemSubname, this.itemPrice,
      this.itemRating);

  @override
  _ProductPageState createState() => new _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  

  @override
  Widget build(BuildContext context) {
  var RatingCount  = int.parse(widget.itemRating);
  Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
   resizeToAvoidBottomPadding: false ,
      backgroundColor: Colors.white,

      body: new CustomScrollView(
      slivers:<Widget>[ SliverAppBar(
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                  backgroundColor:cd, 
                      )),
                    background: new ImageCarousel(widget.itemImage),
                  
                  ),
            ),
          SliverList(delegate: SliverChildListDelegate(
            [
              new SingleChildScrollView(
                child: Container(
      // flex: 1,
      // minimum: EdgeInsets.only(bottom: 10),
         child: 
         Column(
           children: <Widget>[
            //  new SizedBox(height:20.0,),
             new Card(
               child: new Container(
                 width: screenSize.width,
                 margin: EdgeInsets.only(left:20, right: 20.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     SizedBox(height: 10.0,),
                     Text(widget.itemName,style: TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w700
                  )),
                  SizedBox(height:10.0),
                  Text(widget.itemSubname,style: TextStyle(
                  fontSize: 14.0, fontWeight: FontWeight.w400
                  )),
                  SizedBox(height:10.0),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                      new Row(
                        children: List.generate(5,(index){
                          return Icon(
                            index < RatingCount? Icons.star : Icons.star_border
                          );
                        }),
                      ),
                      SizedBox(width:5.0),
                       Text(widget.itemRating,style: TextStyle(
                       fontSize: 14.0, fontWeight: FontWeight.w400
                         ))
                        ]
                      ),
                  Text("RS :"+widget.itemPrice,style: TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.w700,
                      color:Colors.red
                      ))
                  ],)



                   ],
                 ),
               ),
             ),
          new Column(
            children: <Widget>[
              new Card(
                            child: new Container(
                              width:screenSize.width,
                              margin: new EdgeInsets.only(left:20,right:20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height:10.0),
                                    Text("Description",style: TextStyle(
                                        fontSize: 18.0, fontWeight: FontWeight.w700)
                                    ),
                                    SizedBox(height:10.0),
                                    Text("Regular Fit \nSoft Cotton \nDurable Printing \nLight Weight \nComfortable Wear",style: TextStyle(
                                        fontSize: 14.0, fontWeight: FontWeight.w400)
                                    ), SizedBox(height:10.0),

                                  ]
                              ),
                            )
                        ),
              new Card(
                            child: new Container(
                                width:screenSize.width,
                                margin: new EdgeInsets.only(left:20,right:20),
                                child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height:10.0),
                                      Text("Colors",style: TextStyle(
                                          fontSize: 18.0, fontWeight: FontWeight.w700)
                                      ),
                                      SizedBox(height:10.0),
                                      SizedBox(
                                          height: 50.0,
                                          child:ListView.builder(itemBuilder: (context, index){
                                            return new
                                            Padding(
                                              padding:const EdgeInsets.all(4.0),
                                              child: ChoiceChip(
                                                  label: new Text("Color ${index}"),
                                                  selected:false
                                              ),
                                            );
                                          },scrollDirection: Axis.horizontal,itemCount: 3,)
                                      ),SizedBox(height:10.0),
                                      Text("Size",style: TextStyle(
                                          fontSize: 18.0, fontWeight: FontWeight.w700)
                                      ),
                                      SizedBox(height:10.0),
                                      SizedBox(
                                          height: 50.0,
                                          child:ListView.builder(itemBuilder: (context, index){
                                            return new
                                            Padding(
                                              padding:const EdgeInsets.all(4.0),
                                              child: ChoiceChip(
                                                  label: new Text("Size ${index}"),
                                                  selected:false
                                              ),
                                            );
                                          },scrollDirection: Axis.horizontal,itemCount: 3,)
                                      ),SizedBox(height:10.0),
                                      Text("Quantity",style: TextStyle(
                                          fontSize: 18.0, fontWeight: FontWeight.w700)
                                      ),SizedBox(height:10.0),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          CircleAvatar(
                                            backgroundColor: c,
                                              child:IconButton(
                                                onPressed: (){},
                                                color: c,
                                                  icon:Icon(Icons
                                                      .remove,color:Colors.white)
                                              )
                                          ),
                                          Text("0",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),),
                                          CircleAvatar(
                                            backgroundColor: c,
                                              child:IconButton(
                                                onPressed: (){},
                                                color: c,
                                                  icon:Icon(Icons.add,color:Colors.white)
                                              )
                                          ),
                                        ],
                                      ),
                                      SizedBox(height:50.0),
                                    ]
                                )
                            )
                        ),
            ],
          )
           ],
         )
        // ),
      // ),
    ),

              )
            ]
          ),)
          ]
  ), 


    
    
      floatingActionButton: new Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            new FloatingActionButton(onPressed: (){},backgroundColor: c,child: new Icon(Icons.shopping_cart,color: Colors.white,size: 20.0),
            ),
            new CircleAvatar(
                radius:10.0,
                backgroundColor:Colors.red,
                child:Text(
                    "2",style:TextStyle(color:Colors.white,fontSize:13.0)
                )
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar:new BottomAppBar(
            elevation: 0.0,
            color:c,
            shape: new CircularNotchedRectangle(),
            notchMargin: 5.0,

            child:Container(
                height: 50.0,
                decoration: BoxDecoration(color:c,),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Container(
                      width:(screenSize.width-20)/2,
                      child: Text("Add To Cart",textAlign: TextAlign.center,
                          style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)
                      ),
                    ),new Container(
                      width:(screenSize.width-20)/2,
                      child: Text("Buy Now",textAlign: TextAlign.center,
                          style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold)
                      ),
                    )
                  ],

                )
            )
        )
    );
  }
}




