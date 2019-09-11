import 'package:flutter/material.dart';
import 'package:learning_layout/stadia_app_concept/ui/player_details.dart';
import 'package:learning_layout/stadia_app_concept/ui/stadia_logo.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          StadiaLogo(),
          PlayerDetails(),
        ],
      ),
    );
  }
}
