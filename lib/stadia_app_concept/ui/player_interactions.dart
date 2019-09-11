import 'package:flutter/material.dart';
import 'package:learning_layout/stadia_app_concept/style_guide/text_styles.dart';

class PlayerInteractions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 32.0, top: 16.0, bottom: 16.0),
      child: Material(
        elevation: 4,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 16.0,
            bottom: 32.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "HOURS PLAYED",
                      style: hoursPlayedLabelTextStyle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "297 hours",
                style: hoursPlayedTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
