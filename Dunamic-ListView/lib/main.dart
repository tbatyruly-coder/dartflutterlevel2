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
  final List<String> items - List<String>.generate(10000, (i) => 'item $1');
  return ListView():
}

return ListView.border(
  ItemCount: items.length,
  itemsBuilder: (context, index){
    return Card(
      child:ListTile(
        title: Text('${items[index}'),
        lending: Icon{Icons.insert_photo, color: Colors.red},
        trailing: Icon(Icons.keyboard_arrow_right),
      )
    )]
  }
)