import 'package:flutter/material.dart';
import 'package:learning_layout/minimal_shopping_app/ui/product_card_row.dart';
import 'package:meta/meta.dart';

class ProductCard extends StatelessWidget {
  final Color cardColor;
  final String imgUrl;
  final String title;
  final double previousPrice;
  final double price;

  ProductCard(
      {@required this.cardColor,
      @required this.imgUrl,
      @required this.title,
      @required this.previousPrice,
      @required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      height: 320.0,
      decoration: BoxDecoration(
        color: cardColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.grey.withOpacity(0.3),
          width: 0.2,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 8.0,
          ),
          Image.asset(
            imgUrl,
            width: 281.0,
            height: 191.0,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: "Raleway",
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          ProductCardRow(
            previousPrice: previousPrice,
            price: price,
          ),
        ],
      ),
    );
  }
}
