import 'package:flutter/material.dart';
import 'package:learning_layout/stadia_app_concept/style_guide/colors.dart';
import 'package:learning_layout/stadia_app_concept/style_guide/text_styles.dart';
import 'package:learning_layout/stadia_app_concept/ui/image_border.dart';

class PlayerAvatar extends StatelessWidget {
  final bool isOnline;
  final bool showRanking;
  final int ranking;
  final String imagePath;
  final String name;
  final double imageSize = 80.0;

  const PlayerAvatar(
      {Key key,
      this.isOnline = false,
      this.showRanking = false,
      @required this.ranking,
      @required this.imagePath,
      this.name = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          height: imageSize + 8,
          child: Stack(
            children: <Widget>[
              CustomPaint(
                painter: ImageBorder(isOnline: isOnline),
                child: Container(
                  width: imageSize,
                  height: imageSize,
                  child: ClipOval(
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              if (showRanking)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: ClipOval(
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(gradient: appGradient),
                      child: Center(
                        child: Text(
                          ranking.toString(),
                          style: rankTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        if (name != null)
          Text(
            name,
            style: bodyTextStyle,
          )
      ],
    );
  }
}
