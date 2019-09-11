import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_layout/my_weather_app/weather_bloc/bloc.dart';
import 'package:learning_layout/my_weather_app/ui/date_section.dart';
import 'package:learning_layout/my_weather_app/ui/description_section.dart';
import 'package:learning_layout/my_weather_app/ui/temp_section.dart';


class Weather extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (BuildContext context, WeatherState state) {
        debugPrint("top level state is => : $state");
        if (state is InitialWeatherState) {
          debugPrint("in first if => : $state");
          return Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          );
        }
        if (state is LoadedWeatherState) {
          return Container(
            padding: const EdgeInsets.all(60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DateSection(),
                TempSection(
                  weatherData: state.weatherData,
                ),
                DescriptionSection(
                  weatherData: state.weatherData,
                ),
              ],
            ),
          );
        } else {
          return Text("whatsup!!!");
        }
      });
}
}
