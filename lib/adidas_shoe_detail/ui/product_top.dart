import 'package:flutter/material.dart';
import 'package:learning_layout/adidas_shoe_detail/ui/product_images.dart';
import 'package:learning_layout/adidas_shoe_detail/ui/product_ratings.dart';
import 'package:learning_layout/adidas_shoe_detail/utils/utils.dart';

class ProductTop extends StatefulWidget {
  @override
  _ProductTopState createState() => _ProductTopState();
}

class _ProductTopState extends State<ProductTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenAwareSize(245.0, context),
      child: Stack(
        children: [
          ProductImages(),
          ProductRatings(),
        ],
      ),
    );
  }
}
