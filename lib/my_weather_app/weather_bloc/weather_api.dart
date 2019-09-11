import 'package:learning_layout/my_weather_app/model/weather_data.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as client;
import 'dart:convert';

class WeatherApi {
  final String apiKey = "0ae7419166b695622dc923d8e1f87e2a";
  final String endPoint = "http://api.openweathermap.org/data/2.5";
  final client.Client httpClient;

  WeatherApi({@required this.httpClient});

  String lastCall() => "&APPID=" + apiKey + "&units=metric";

  String locationApiCall({double lat, double long}) {
    return endPoint +
        "/weather?lat=" +
        lat.toString() +
        "&lon=" +
        long.toString() +
        lastCall();
  }

  String byCityIDApiCall({int cityId}) {
    return endPoint + "/weather?id=" + cityId.toString() + lastCall();
  }

  String byCityName({String cityName}) {
    return endPoint + "/weather?q=" + cityName + lastCall();
  }

  Future<WeatherData> getWeatherByLocation(
      {@required double lat, @required double long}) async {
    final client.Response response = await httpClient
        .get(Uri.encodeFull(locationApiCall(lat: lat, long: long)), headers: {
      "Accept": "application/json",
    });

    final WeatherData weatherData = await WeatherData.deserialize(response.body);

    return weatherData;
  }

  Future<WeatherData> getWeatherByCityID({@required int cityId}) async {
    final client.Response response = await httpClient
        .get(Uri.encodeFull(byCityIDApiCall(cityId: cityId)), headers: {
      "Accept": "application/json",
    });

    print("response is => ${response.body}");

    JsonDecoder jsonDecoder = JsonDecoder();
    final map = jsonDecoder.convert(response.body);

    final String _location = map["name"];
    final double _temp = map["main"]["temp"].toDouble;
    final String _weatherCondition = map["weather"][0]["main"];
    final String _image = map["weather"][0]["main"];



    return WeatherData(
        location: _location,
        temp: _temp,
        weatherCondition: _weatherCondition,
        image: _image);
  }

  Future<WeatherData> getWeatherByCityName({@required String cityName}) async {
    final client.Response response = await httpClient
        .get(Uri.encodeFull(byCityName(cityName: cityName)), headers: {
      "Accept": "application/json",
    });

    print("response is => ${response.body}");

    final WeatherData weatherData = await WeatherData.deserialize(response.body);

    return weatherData;
  }
}
