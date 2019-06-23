import 'package:flutter/material.dart';
import 'Product/productList.dart';
Color cd = const Color.fromARGB(0xAA, 0x00, 0x00, 0x00);
Color c = const Color.fromARGB(0xFF, 0x2C, 0x53, 0x64);
String path = 'https://cdna.4imprint.com/prod/extras/006729/391089/700/1.jpg';
String p2 = 'assets/pic1.jpg';

class model {
  String s;
  String name;

  model(String sp, String sp1) {
    s = sp;
    name = sp1;
  }
}

List arr = [
  model(
      'https://images.unsplash.com/photo-1499202977705-65f436dac18a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
      "Mens Chinos"),
  model(
      'https://images.unsplash.com/photo-1490367532201-b9bc1dc483f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
      "Men's Formal"),
  model(
      // https://images.unsplash.com/photo-1528356308114-77df487717a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1834&q=80
      'https://images.unsplash.com/photo-1551411979-4b7e24ec51e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
      "Female Apparels"),
  model(
      'https://static-01.daraz.pk/original/7e6f0af50c09bd81bf4344ab37701780.jpg',
      "Men's Polo")
];



class categoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String,WidgetBuilder>{        
        '/productList':(BuildContext context)=>productListPage(),
      },
      home: Scaffold(
            appBar: new AppBar(
          title: Text("Nouveau Apparels"),
          elevation: 0.0,
          backgroundColor: cd,
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
    body: CatBody(),
      ),
    );
  }
}

class CatBody extends StatefulWidget {
  @override
  _CatBodyState createState() => _CatBodyState();
}

class _CatBodyState extends State<CatBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      child: ListView.builder(
        itemCount: arr.length,
        itemBuilder: (context, index) {
          return  GestureDetector(
            onTap: (){print("55");Navigator.of(context).pushNamed('/productList');},
            child: Container(
              height: 180,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Stack(
                  children: <Widget>[
                    Opacity(
                        opacity: 0.9,
                        child: Container(
                          child: Image.network(
                            arr[index].s,
                            fit: BoxFit.cover,
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                        )),
                    Container(
                      decoration: BoxDecoration(
                        gradient: new LinearGradient(
                            colors: [Colors.black54, Colors.transparent],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                    ),
                    Center(
                      child: Text(arr[index].name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

