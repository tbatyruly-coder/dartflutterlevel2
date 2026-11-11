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
          Title: Text("Weather", style: TextStyle(color: Colors.black87)),
          centerTitle:true,
          background: Colors.white  
          leading : IconButton(Icon: Icon()),
          iconTheme: IconThemeDate(Color: Colors.black54),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(icon: Icon(Icona.settings), onPressed: (){}),
          ]
        ),
        body: _buildBody(),
            ), 
        ),
      },
      
  };
Widget  _buildBody(){
  return SingleChildScrollView(
    child:Column (
      children: <Widget>[
        _headerImage(),
        SafeArea(
          child: Padding(
            padding : EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: <Widget>[
                _weatherDescription(),
                const Divider(),
                _temperature(),
                const Divider(),
                _temperatureForecast(),
                const Divider(),
                _footerRatings(),
            ]
            )
          )
          )
      ],
    ),
    );
}
Image _headerImage(){
  return Image(
    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr9amjGapQKnD_OC-rOVUcgh8txanPNRw358XBkJJkcg&s")
    fit: Boxfit.cover 
  );
}
Column _wearherDescription(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text{
        'Tuesday - March 7 '
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: bold
          color:Colors.pink100
        ),
      },
      Divider()
      'Temperatures: Daytime high temperatures typically reach around 10°C to 12°C (50°F to 54°F), while nighttime temperatures drop near 0°C to 1°C (32°F to 34°F).   Conditions: March marks the early transition into spring, so you can expect cool to chilly conditions with a mix of overcast skies and sunshine.   Precipitation: There is a moderate chance of light rain or mixed showers during early March, as it is historically one of the wetter transition months in the region.   Clothing: A warm jacket or layerable clothing is recommended, especially for the mornings and evenings when temperatures drop near freezing.  '
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
          ),
        ],
      ),
      const SizedBox(width: 16.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: const <Widget>[
              Text(
                '15 Clear',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ],
          ),
          Row(
            children: const <Widget>[
              Text(
                'Murmanskaya oblast, Murmans',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10.0,
    children: List.generate(8, (int index) {
      return Chip(
        label: Text(
          '${index + 20}C',
          style: const TextStyle(fontSize: 15.0),
        ),
        avatar: Icon(
          Icons.wb_cloudy,
          color: Colors.blue.shade300,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: const BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
      );
    }),
  );
}

Row _footerRatings() {
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600]),
      const Icon(Icons.star, size: 15.0, color: Colors.black),
      const Icon(Icons.star, size: 15.0, color: Colors.black),
    ],
  );

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const Text(
        'Info with openweathermap.org',
        style: TextStyle(fontSize: 15.0),
      ),
      stars,
    ],
  );
}