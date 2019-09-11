import 'package:flutter/material.dart';

class ProfileChallenge extends StatelessWidget {
  final Color iconColor = Color(0xFFCCCCCC);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Challenge"),
      ),
      body: Center(
        child: Text("Hello from Profile Challenge"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        iconSize: 25.0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: iconColor,),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, color: iconColor,),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up, color: iconColor,),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user, color: iconColor,),
            title: Text(""),
          ),
        ],
      ),
    );
  }
}
