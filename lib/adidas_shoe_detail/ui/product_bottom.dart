import 'package:flutter/material.dart';
import 'package:learning_layout/adidas_shoe_detail/ui/product_description_details.dart';
import 'package:learning_layout/adidas_shoe_detail/ui/product_description_title.dart';
import 'package:learning_layout/adidas_shoe_detail/ui/selection_section.dart';

import 'package:learning_layout/adidas_shoe_detail/utils/utils.dart';


class ProductBottom extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ProductDescriptionTitle(),
          SizedBox(
            height: screenAwareSize(8.0, context),
          ),
          ProductDescriptionDetails(),
          SizedBox(
            height: screenAwareSize(12.0, context),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenAwareSize(15, context),
              right: screenAwareSize(75, context),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Size",
                  style: TextStyle(
                    color: Color(0xFF949598),
                    fontFamily: "Montserrat-SemiBold",
                    fontSize: screenAwareSize(10, context),
                  ),
                ),
                Text(
                  "Quantity",
                  style: TextStyle(
                    color: Color(0xFF949598),
                    fontFamily: "Montserrat-SemiBold",
                    fontSize: screenAwareSize(10, context),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenAwareSize(12.0, context),
          ),
          SelectionSection(),
        ],
      ),
    );
  }
}
