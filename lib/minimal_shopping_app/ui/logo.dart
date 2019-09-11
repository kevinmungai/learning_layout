import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50.0,
          bottom: 25.0,
        ),
        child: Image.asset(
          "images/logo.png",
          width: 62.0,
          height: 43.0,
        ),
      ),
    );
  }
}
