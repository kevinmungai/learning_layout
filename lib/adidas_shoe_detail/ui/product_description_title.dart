import 'package:flutter/material.dart';
import 'package:learning_layout/adidas_shoe_detail/utils/utils.dart';

class ProductDescriptionTitle extends StatefulWidget {
  @override
  _ProductDescriptionTitleState createState() => _ProductDescriptionTitleState();
}

class _ProductDescriptionTitleState extends State<ProductDescriptionTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenAwareSize(18, context)),
      child: Text(
        "Product Description",
        style: TextStyle(
          color: Color(0xFF949598),
          fontSize: screenAwareSize(10, context),
          fontFamily: "Montserrat-SemiBold",
        ),
      ),
    );
  }
}
