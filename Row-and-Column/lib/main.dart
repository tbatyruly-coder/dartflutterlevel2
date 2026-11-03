import 'package:flutter/material.dart';

void main()(
  runApp(MyApp)
);
class MyApp extends stalelessWidget {
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          Title: Text("building layouts"),
          centerTitle:true,
        ),
        body: Align(
          aligment: aligment(0.5,0.5 ),
          child : Text(
            'Hello flutter'
            style:TextStyle(fontSize:30),
          ),
        ),
          
      ),
    ),
  };
}