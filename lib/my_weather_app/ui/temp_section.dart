import 'package:flutter/material.dart';
import 'package:learning_layout/my_weather_app/model/weather_data.dart';

class TempSection extends StatelessWidget {
  final WeatherData weatherData;

  TempSection({@required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "${weatherData.temp.toStringAsFixed(0)}",
            style: TextStyle(
              fontSize: 80.0,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 12.0),
              margin: const EdgeInsets.only(left: 6.0),
              child: Text(
                "\u2103",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
          Image.network(
            "https://openweathermap.org/img/w/${weatherData.image}.png",
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
