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
        body: Row(
          children; <Widget>[
             Expanded(
              flex: 3,
              child: Image.network(
                
              ),
             ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Color.red,
                child: Text('1'),
              ),
            ),
             Expanded(
              flex: 2 ,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Color.yellow,
                child: Text('2'),
              ),
             ),
              Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(30),
                color: Color.blue,
                child: Text('3'),
              ),
              ),
          ]
          ),
        ),
          
      ),f
    
  };
}