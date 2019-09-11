import 'package:flutter/material.dart';
import 'package:learning_layout/stadia_app_concept/model/last_played_game.dart';
import 'package:learning_layout/stadia_app_concept/ui/friends_widget.dart';
import 'package:learning_layout/stadia_app_concept/ui/last_played_game_tile.dart';
import 'package:learning_layout/stadia_app_concept/ui/player_content_heading.dart';
import 'package:learning_layout/stadia_app_concept/ui/player_header.dart';
import 'package:learning_layout/stadia_app_concept/ui/player_interactions.dart';
import 'package:learning_layout/stadia_app_concept/ui/player_menu_header.dart';

class PlayerDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          PlayerMenuHeader(),
          PlayerHeader(),
          PlayerInteractions(),
          PlayerContentHeading(
            heading: "Last Played Games",
          ),
          for (var i = 0; i < lastPlayedGames.length; i++)
            LastPlayedGameTile(
              lastPlayedGame: lastPlayedGames[i],
              screenWidth: screenWidth,
              gameProgress: lastPlayedGames[i].gameProgress,
            ),
          PlayerContentHeading(
            heading: "Friends",
          ),
          FriendsWidget(),
        ],
      ),
    );
  }
}
