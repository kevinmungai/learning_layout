import 'package:flutter/material.dart';
import 'package:learning_layout/adidas_shoe_detail/utils/utils.dart';

class ProductRatings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenAwareSize(18.0, context),
      bottom: screenAwareSize(15.0, context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Rating",
            style: TextStyle(
                color: Color(0xFF949598),
                fontSize: screenAwareSize(10, context),
                fontFamily: "Montserrat-SemiBold"),
          ),
          SizedBox(
            height: screenAwareSize(8.0, context),
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 8.0,
              ),
              Icon(
                Icons.star,
                color: Color(0xFFFFE600),
              ),
              SizedBox(
                width: screenAwareSize(5.0, context),
              ),
              Text(
                "4.5",
                style: TextStyle(
                  color: Color(0xFFFFE600),
                ),
              ),
              SizedBox(
                width: screenAwareSize(5.0, context),
              ),
              Text(
                "(378 people)",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
