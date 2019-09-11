import 'package:flutter/material.dart';
import 'package:learning_layout/stadia_app_concept/ui/home_screen.dart';

class StadiaAppConcept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.white,
        primarySwatch: Colors.blue,
        fontFamily: "Oxygen",
      ),
      isMaterialAppTheme: true,
      child: HomeScreen(),
    );
  }
}
