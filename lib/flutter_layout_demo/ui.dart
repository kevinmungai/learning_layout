import 'title.dart';
import 'button_section.dart';
import 'text_section.dart';
import 'image_section.dart';

import 'package:flutter/material.dart';

class FlutterLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Layout Demo"),
      ),
      body: ListView(
        children: <Widget>[
          ImageSection(),
          TitleSection(),
          ButtonSection(),
          TextSection(),
        ],
      ),
    );
  }
}
