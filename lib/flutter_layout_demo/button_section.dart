import 'package:flutter/material.dart';
import 'button_column.dart';

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ButtonColumn(
            color: color,
            iconData: Icons.call,
            label: "CALL",
          ),
          ButtonColumn(
            color: color,
            iconData: Icons.near_me,
            label: "ROUTE",
          ),
          ButtonColumn(
            color: color,
            iconData: Icons.share,
            label: "SHARE",
          ),
        ],
      ),
    );
  }
}
