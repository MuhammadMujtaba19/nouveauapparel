import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TestData extends StatefulWidget {
  @override
  _TestDataState createState() => _TestDataState();
}

class _TestDataState extends State<TestData> {
  final String url = "https://api.myjson.com/bins/1f9g7f";
  List data;
  Future<String> getSWData()async{
    var res  =await http.get(Uri.encodeFull(url),headers:{"Accept":"application/json"});
  setState(() {
      var resBody = json.decode(res.body);
      data = resBody["Featured"];
  });
  return "success";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World!"),
        backgroundColor: Colors.amberAccent,
      ),
      body :ListView.builder(
        itemCount: (data==null) ? 0  : data.length,
        itemBuilder: (BuildContext context,int index){
           return GestureDetector(
             
             onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      child: Stack(
                        children: <Widget>[
                          Container(height: 200,width: 140,child: Image.network(data[index]["image"],fit: BoxFit.cover,)),
                          Positioned(
                              left: 0,
                              bottom: 0,
                              height: 100,
                              width: 140,
                              child: Container(
                                decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.bottomCenter,end: Alignment.topCenter,colors: [Colors.black,Colors.transparent])),
                              ),
                          ),
                          Positioned(left: 0,bottom: 00,width: 140,height: 100,
                              
                              child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left:8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(data[index]["name"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                      Text(data[index]["price"].toString(),style: TextStyle(fontSize: 14,color: Colors.white),),
        
                                    ],
                                  ),
                                ),
                                Container(margin: EdgeInsets.only(right: 8),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),padding: EdgeInsets.all(8),child: Text("20 %",textAlign: TextAlign.center,),)
                                ],
                              ) 
                          )
                        ],
                      ),
                    ),
                  ),
                );
        },
      )
    );
  }
 @override
  void initState() {
    super.initState();
    this.getSWData();
  } 
}