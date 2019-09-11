import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class WeatherData extends Equatable {
  final String location;
  final double temp;
  final String weatherCondition;
  final String image;

  WeatherData(
      {@required this.location,
      @required this.temp,
      @required this.weatherCondition,
      @required this.image});

  static Future<WeatherData> deserialize(String json) async {
    JsonDecoder jsonDecoder = JsonDecoder();
    final map = jsonDecoder.convert(json);

    print("name => ${map["name"]}");
    print("temp => ${map["main"]["temp"]}");
    print("weatherCondition => ${map["weather"][0]["main"]}");
    print("image => ${map["weather"][0]["icon"]}");

    final String _location = map["name"];
    final double _temp = map["main"]["temp"].toDouble();
    final String _weatherCondition = map["weather"][0]["main"];
    final String _image = map["weather"][0]["icon"];

    return WeatherData(
        location: _location,
        temp: _temp,
        weatherCondition: _weatherCondition,
        image: _image);
  }

  @override
  String toString() =>
      "WeatherData { location: $location, temp : $temp, weatherCondition: $weatherCondition, image : $image }";
}
