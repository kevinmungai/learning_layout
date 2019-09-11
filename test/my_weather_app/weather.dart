import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:learning_layout/main.dart';
import 'package:learning_layout/my_weather_app/ui/weather.dart';

void main() {
  testWidgets("Weather Widget Test", (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(directionalityAncestor(Weather()), Duration(minutes: 2));
    
    expect(find.byType(Column), findsWidgets);
  });
}

Widget directionalityAncestor(Widget child) {
  return Directionality(
    textDirection: TextDirection.ltr,
    child: child,
  );
}