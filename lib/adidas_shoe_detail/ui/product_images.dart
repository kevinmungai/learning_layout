import 'package:flutter/material.dart';
import 'package:learning_layout/adidas_shoe_detail/utils/utils.dart';

class ProductImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: Image.asset(
            "images/adidas.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60.0, right: 35.0),
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: screenAwareSize(50, context),
              height: screenAwareSize(50, context),
              decoration: BoxDecoration(
                color: Colors.black26,
                shape: BoxShape.circle,
              ),
              child: Image.asset("images/360.png"),
            ),
          ),
        ),
      ],
    );
  }
}
