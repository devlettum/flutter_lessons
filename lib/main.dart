// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  // runApp(MaterialApp());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      home: Scaffold(
        // backgroundColor: Colors.yellow,
        appBar: AppBar(title: Text('Batuhan'), backgroundColor: Colors.amber),
        body: Container(
          color: Colors.red.shade200,
          // height:400,
          child: Column(
            /*ROW ile kullandık. */
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('B'),
                  Text('A'),
                  Text('T'),
                  Text('U'),
                ],
              ),
              Icon(Icons.add_circle, size: 64, color: Colors.green),
              Icon(Icons.add_circle, size: 64, color: Colors.red),
              Icon(Icons.add_circle, size: 64, color: Colors.blue),
              Icon(Icons.add_circle, size: 64, color: Colors.orange),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı.');
          },
          child: Icon(Icons.account_circle_rounded, color: Colors.amber),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }

  Center containerLessons() {
    return Center(
      // alignment: Alignment.center,
      // alignment:Alignment(1,-1),
      // alignment:Alignment.topLeft,
      // color:Colors.purple,
      // width:200,
      // height:200,
      // child:Text('batu',textAlign: TextAlign.center),
      // width:200,
      // height:200,
      // margin:EdgeInsets.all(16),
      // margin:EdgeInsets.only(left:8,top:20),
      // margin:EdgeInsets.symmetric(vertical:50, horizontal:50),
      // margin:EdgeInsets.fromLTRB(10,20,50,30),
      // padding:EdgeInsets.all(30),
      // constraints: BoxConstraints(minWidth:100,minHeight:100,maxWidth:200,maxHeight:200),

      // width:100,
      // height:100,
      // color:Colors.purpleAccent,
      // // alignment:Alignment.center,
      // child:Container(
      //   alignment:Alignment.center,
      //   color:Colors.blue,
      //   margin:EdgeInsets.all(20),
      //   width:50,
      //   height:50,
      //   child:Text('BATU'),
      // ),

      //padding:EdgeInsets.all(20),
      child: FlutterLogo(
        size: 128,
        // textColor:Colors.purple,
        // style:FlutterLogoStyle.stacked,
      ),
      //decoration: BoxDecoration(
      //color:Colors.orange,
      //shape:BoxShape.circle
      //),
    );
  }
}
