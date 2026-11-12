import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF44336), 
        appBar: AppBar(
          backgroundColor: const Color(0xFFF44336),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Weather Forecast',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildSearchField(),
              const SizedBox(height: 20),
              _buildCityDetail(),
              const SizedBox(height: 40),
              _buildTemperatureDetail(),
              const SizedBox(height: 40),
              _buildExtraWeatherDetail(),
              const SizedBox(height: 50),
              const Text(
                '7-DAY WEATHER FORECAST',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 16),
              _buildBottomListView(),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildSearchField() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.white, size: 24),
          SizedBox(width: 12),
          Text(
            'Enter City Name',
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildCityDetail() {
    return const Column(
      children: [
        Text(
          'Murmansk Oblast, RU',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Friday, Mar 20, 2020',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }

  // 3. Основная температура и иконка солнца
  Widget _buildTemperatureDetail() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.wb_sunny,
          color: Colors.white,
          size: 76,
        ),
        SizedBox(width: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '14 °F',
              style: TextStyle(
                color: Colors.white,
                fontSize: 54,
                fontWeight: FontWeight.w200,
              ),
            ),
            Text(
              'LIGHT SNOW',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ],
    );
  }


  Widget _buildExtraWeatherDetail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildWeatherColumn('5', 'km/hr'),
        _buildWeatherColumn('3', '%'),
        _buildWeatherColumn('20', '%'),
      ],
    );
  }

  Widget _buildWeatherColumn(String value, String unit) {
    return Column(
      children: [
        const Icon(Icons.ac_unit, color: Colors.white, size: 28),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        Text(
          unit,
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildBottomListView() {
    final List> forecast = [
      {'day': 'Friday', 'temp': '6 °F'},
      {'day': 'Saturday', 'temp': '5 °F'},
      {'day': 'Sunday', 'temp': '22 °F'},
      {'day': 'Monday', 'temp': '18 °F'},
      {'day': 'Tuesday', 'temp': '12 °F'},
      {'day': 'Wednesday', 'temp': '9 °F'},
      {'day': 'Thursday', 'temp': '15 °F'},
    ];a

    return Container(
      height: 110,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: forecast.length,
        itemBuilder: (context, index) {
          return Container(
            width: 150,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            padding: const EdgeInsets.all(12),
            color: Colors.white.withOpacity(0.3), 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  forecast[index]['day']!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      forecast[index]['temp']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 32,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}