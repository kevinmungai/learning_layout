import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateSection extends StatefulWidget {
  @override
  _DateSectionState createState() => _DateSectionState();
}

class _DateSectionState extends State<DateSection> {
  String _timeString;
  Timer _timer;

  @override
  void initState() {
    _timeString = _formatDateTime(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer t) => _newTime(t));
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _timeString,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24.0,
        ),
      ),
    );
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat("MMMM d, H:mm").format(dateTime);
  }

  void _newTime(Timer t) {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _timeString = formattedDateTime;
      _timer = t;
    });
  }
}
