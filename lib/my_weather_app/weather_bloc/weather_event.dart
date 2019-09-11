import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WeatherEvent extends Equatable {
  WeatherEvent([List props = const <dynamic>[]]) : super(props);
}

class GetWeatherByCityIDEvent extends WeatherEvent {
  final int cityId;

  GetWeatherByCityIDEvent({@required this.cityId}) : super([cityId]);

  @override
  String toString() => "GetWeatherEventByCityID { cityID : $cityId }";
}

class GetWeatherByLocationEvent extends WeatherEvent {
  @override
  String toString() => "GetWeatherByLocationEvent";
}

class GetWeatherByCityNameEvent extends WeatherEvent {
  final String cityName;

  GetWeatherByCityNameEvent({@required this.cityName}) : super([cityName]);
}


class WeatherByLocation extends WeatherEvent {
  final double lat;
  final double long;

  WeatherByLocation({@required this.lat, @required this.long});

  @override
  String toString() => "WeatherByLocation { lat : $lat, long : $long }";
}