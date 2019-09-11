import 'package:flutter/material.dart';
import 'package:learning_layout/adidas_shoe_detail/ui/adidas_shoe_detail.dart';
import 'package:learning_layout/list_of_layouts.dart';
import 'package:learning_layout/flutter_layout_demo/ui.dart';
import 'package:learning_layout/minimal_shopping_app/ui/minimal_shopping_app.dart';
import 'package:learning_layout/my_weather_app/ui/my_weather_app.dart';
import 'package:learning_layout/profile_challenge/profile_challenge.dart';
import 'package:learning_layout/stadia_app_concept/ui/stadia_app_concept.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/" : (BuildContext context) => ListOfLayouts(),
        "/flutter_layout_demo" : (BuildContext context) => FlutterLayoutDemo(),
        "/profile_challenge" : (BuildContext context) => ProfileChallenge(),
        "/my_weather_app" : (BuildContext context) => MyWeatherApp(),
        "/minimal_shopping_app" : (BuildContext context) => MinimalShoppingApp(),
        "/adidas_shoe_detail" :(BuildContext context) => AdidasShoeDetail(),
        "/stadia_app_concept" : (BuildContext context) => StadiaAppConcept(),
      },
    );
  }
}

