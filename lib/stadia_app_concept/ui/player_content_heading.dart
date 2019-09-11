import 'package:flutter/material.dart';
import 'package:learning_layout/stadia_app_concept/style_guide/text_styles.dart';

class PlayerContentHeading extends StatelessWidget {
  final String heading;

  const PlayerContentHeading({Key key, @required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      alignment: Alignment.topLeft,
      child: Text(
        heading,
        style: headingOneTextStyle,
      ),
    );
  }
}
