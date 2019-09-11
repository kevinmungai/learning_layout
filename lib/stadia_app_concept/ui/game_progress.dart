import 'package:flutter/material.dart';
import 'package:learning_layout/stadia_app_concept/style_guide/colors.dart';

class GameProgress extends StatefulWidget {
  final double gameProgress;
  final double screenWidth;

  const GameProgress(
      {Key key, @required this.gameProgress, @required this.screenWidth})
      : super(key: key);

  @override
  _GameProgressState createState() => _GameProgressState();
}

class _GameProgressState extends State<GameProgress>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> progressAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    progressAnimation = Tween<double>(
            begin: 0, end: widget.screenWidth * 0.33 * widget.gameProgress)
        .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = widget.screenWidth * 0.33;
    return AnimatedBuilder(
      animation: progressAnimation,
      builder: (BuildContext context, Widget child) {
        return Stack(
          children: <Widget>[
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                border: Border.all(color: tertiaryTextColor),
              ),
            ),
            Container(
              width: progressAnimation.value,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                gradient: appGradient,
              ),
            ),
          ],
        );
      },
    );
  }
}
