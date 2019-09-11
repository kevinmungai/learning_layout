import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_layout/my_weather_app/weather_bloc/bloc.dart';
import 'package:learning_layout/my_weather_app/ui/weather.dart';
import 'package:http/http.dart' as http;
import 'package:learning_layout/my_weather_app/location_bloc/bloc.dart';

class MyWeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
      ),
      body: BlocProvider<WeatherBloc>(
        builder: (BuildContext context) =>
            WeatherBloc(weatherApi: WeatherApi(httpClient: http.Client()), locationBloc: LocationBloc())
              ..dispatch(GetWeatherByLocationEvent()),
        child: Weather(),
      ),
      backgroundColor: Colors.lightBlue,
    );
  }
}
