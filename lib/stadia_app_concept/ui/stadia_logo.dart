import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning_layout/stadia_app_concept/style_guide/colors.dart';
import 'package:learning_layout/stadia_app_concept/asset_paths.dart';

class StadiaLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final logoHeight = screenHeight * 0.4;
    final logoWidth = screenWidth * 0.4;

    return Transform.translate(
      offset: Offset(logoWidth, 10),
      child: Transform.rotate(
        angle: -0.1,
        child: SvgPicture.asset(
          logo,
          semanticsLabel: "Stadia Logo",
          height: logoHeight,
          color: logoTintColor,
        ),
      ),
    );
  }
}
