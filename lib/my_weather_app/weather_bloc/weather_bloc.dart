import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:learning_layout/my_weather_app/model/weather_data.dart';
import 'bloc.dart';
import 'package:learning_layout/my_weather_app/location_bloc/bloc.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherApi weatherApi;
  final LocationBloc locationBloc;
  StreamSubscription streamSubscription;

  WeatherBloc({@required this.weatherApi, @required this.locationBloc}) {
    streamSubscription =
        locationBloc.state.listen((LocationState state) {
      if (state is LocationFound) {
        final double lat = state.locationData.latitude;
        final double long = state.locationData.longitude;
        dispatch(WeatherByLocation(lat: lat, long: long));
      }
    });
  }

  @override
  WeatherState get initialState => InitialWeatherState();

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is GetWeatherByCityNameEvent) {
      final WeatherData weatherData =
          await weatherApi.getWeatherByCityName(cityName: event.cityName);
      yield LoadedWeatherState(weatherData: weatherData);
    }

    if (event is GetWeatherByLocationEvent) {
      locationBloc.dispatch(GetLocation());
    }

    if (event is GetWeatherByCityIDEvent) {
      final WeatherData weatherData =
          await weatherApi.getWeatherByCityID(cityId: event.cityId);
      print("GETWEATERBYCITYID");
      yield LoadedWeatherState(weatherData: weatherData);
    }

    if (event is WeatherByLocation) {
      final WeatherData weatherData = await weatherApi.getWeatherByLocation(
          lat: event.lat, long: event.long);
      yield LoadedWeatherState(weatherData: weatherData);
    }
  }

  @override
  void dispose() {
    streamSubscription.cancel();
    super.dispose();
  }
}
