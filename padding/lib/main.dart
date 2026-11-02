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
        body: Padding(
          padding: EdgeInsets>only(left: 50, top: 60),
          child: Text(
            'Hello flutter'
            style:TextStyle(fontSize:30),
          ),
        ),
      ),
    ),
  };
}