import 'package:flutter/material.dart';
import 'package:learning_layout/stadia_app_concept/style_guide/text_styles.dart';
import 'package:learning_layout/stadia_app_concept/asset_paths.dart';
import 'package:learning_layout/stadia_app_concept/ui/player_avatar.dart';

class PlayerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          PlayerAvatar(
            imagePath: player1,
            ranking: 38,
            showRanking: true,
            isOnline: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Hello",
                    style: userNameTextStyle,
                  ),
                  TextSpan(text: "\n"),
                  TextSpan(
                    text: "John Snow",
                    style: userNameTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
