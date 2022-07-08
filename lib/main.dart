// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  // runApp(MaterialApp());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Container containerOlustur(String harf,Color renk,{double margin=0}){
    return Container(
       
          width: 75,
          height: 75,
          alignment: Alignment.center,
          margin:EdgeInsets.only(top:margin),
          color: renk,
          child: Text(
            harf,
            style: TextStyle(fontSize: 48),
          ),
    );
  }  



  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur("D",Colors.orange.shade200),
        containerOlustur("A",Colors.orange.shade300),
        containerOlustur("R",Colors.orange.shade400),
        containerOlustur("T",Colors.orange.shade500),
     ],
    );
  }





  Column dersleriColumnOlustur() {
    return Column(
      mainAxisAlignment:MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child:containerOlustur('E',Colors.orange.shade300,margin:15),
        ),
        Expanded(
          child:containerOlustur('R',Colors.orange.shade400,margin:15),
        ),
        Expanded(
          child:containerOlustur('S',Colors.orange.shade500,margin:15),
        ),
        Expanded(
          child:containerOlustur('L',Colors.orange.shade600,margin:15),
        ),
        Expanded(
          child:containerOlustur('E',Colors.orange.shade700,margin:15),
        ),
        Expanded(
          child:containerOlustur('R',Colors.orange.shade800,margin:15),
        ),
        Expanded(
          child:containerOlustur('İ',Colors.orange.shade900,margin:15),
        ),
      ],
    );
  }

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
          color: Colors.red.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowunuOlustur(),
              Expanded(child: dersleriColumnOlustur()),
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
}
