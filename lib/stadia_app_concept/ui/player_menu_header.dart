import 'package:flutter/material.dart';
import 'package:learning_layout/stadia_app_concept/style_guide/colors.dart';

class PlayerMenuHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            color: primaryTextColor,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            color: primaryTextColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
