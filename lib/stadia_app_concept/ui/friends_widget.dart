import 'package:flutter/material.dart';
import 'package:learning_layout/stadia_app_concept/model/friends.dart';
import 'package:learning_layout/stadia_app_concept/ui/player_avatar.dart';

class FriendsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 50, top: 2),
        child: Row(
          children: <Widget>[
            for( var i = 0; i < friends.length; i++)
              PlayerAvatar(
                imagePath: friends[i].imagePath,
                isOnline: friends[i].isOnline,
                name: friends[i].name,
              )
          ],
        ),
      ),
    );
  }
}
