import 'package:flutter/material.dart';
import 'package:learning_layout/my_weather_app/model/weather_data.dart';

class DescriptionSection extends StatelessWidget {
  final WeatherData weatherData;

  DescriptionSection({@required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "${weatherData.location}",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            "${weatherData.weatherCondition}",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
