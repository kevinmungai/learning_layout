import 'package:flutter/material.dart';
import 'package:learning_layout/adidas_shoe_detail/utils/utils.dart';
import 'package:learning_layout/adidas_shoe_detail/data/data.dart';

class ProductDescriptionDetails extends StatefulWidget {
  @override
  _ProductDescriptionDetailsState createState() => _ProductDescriptionDetailsState();
}

class _ProductDescriptionDetailsState extends State<ProductDescriptionDetails> {
  bool isExpanded = false;

  void expand() {
    setState(() {
      if (isExpanded) {
        isExpanded = false;
      } else {
        isExpanded = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(26, context),
              right: screenAwareSize(10.0, context),
            ),
            child: AnimatedCrossFade(
              firstChild: Text(
                desc,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenAwareSize(10.0, context),
                  fontFamily: "Montserrat-Medium",
                ),
              ),
              secondChild: Text(
                desc,
                // maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenAwareSize(10.0, context),
                  fontFamily: "Montserrat-Medium",
                ),
              ),
              crossFadeState: isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: kThemeAnimationDuration,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 26.0,
              right: 18.0,
            ),
            //height: 18.0,
            child: GestureDetector(
              onTap: expand,
              child: Text(
                isExpanded ? "less" : "more...",
                style: TextStyle(
                  color: Color(0xFFFB382F),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
