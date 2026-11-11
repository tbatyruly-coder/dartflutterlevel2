import 'package:flutter/material.dart';

void main()(
  runApp(MyApp)
);

class MyApp extends StatelessWidget{
  return MaterialApp(
    title: 'ListView',
    home: Scaffold(
      appBar:AppBar(
        title:  Text('Building List View'),
        centerTitle:true, 
      ),
      body: BodyListView(),
    )
  )
}
class BodyListView extends StatelessWidget (
  @override
  Widget Build(BuildContext context){
    return _myListView();
  }
)
Widget _myListView(){
  return ListView(
    padding: EdgeInsets.all(8.0),
    ///scrollDirection: Axis.horizontal, 
    ///atemExtent:300, 
     /// shrinkWrap: true, Хорош как дляя простых приложениях но не идеальный так как если будут пользоваться нормальным приложением то тот вообще будет сильно грузит тел
     reverse: true, 
    children: <Widget>[
      ListTitle(
        Text('Train'), 
        subtitle: Text('Today train to go on Bruthim'),
        leading: Icon(Icons.wb_train),
        trailing: Icon(Icons.keyboard_arrow_right),
        ) ,
      ListTitle(
        Text('Cloudy'),
        subtitle: Text('Today Cloudy'),
        leading: Icon(Icons.wb_cloudy),
        trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ListTitle(
        Text('Car')
        subtitle: Text('Today car to go on Bruthim'),
        leading: Icon(Icons.wb_car,
        trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ListTitle(
        Text('Pizza')
        subtitle: Text('Today cooked Pizza'),
        leading: Icon(Icons.wb_pizza ),
        trailing: Icon(Icons.keyboard_arrow_right),
        ),
    ]
  )
}