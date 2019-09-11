import 'package:equatable/equatable.dart';
import 'package:learning_layout/my_weather_app/model/weather_data.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WeatherState extends Equatable {
  WeatherState([List props = const <dynamic>[]]) : super(props);
}

class InitialWeatherState extends WeatherState {
  @override
  String toString() => "InitialWeatherState";
}

class LoadedWeatherState extends WeatherState {
  final WeatherData weatherData;

  LoadedWeatherState({@required this.weatherData}) : super([weatherData]);

  @override
  String toString() => "LoadedWeatherState {\nweatherData : $weatherData }\n";
}
