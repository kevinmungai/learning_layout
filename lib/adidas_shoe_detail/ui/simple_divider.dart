import 'package:flutter/material.dart';

class SimpleDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 4.0,
      ),
      child: Container(
        width: 0.8,
        color: Colors.black,
      ),
    );
  }
}
