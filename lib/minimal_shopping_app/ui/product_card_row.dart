import 'package:flutter/material.dart';
import 'package:learning_layout/minimal_shopping_app/ui/custom_icons.dart';

class ProductCardRow extends StatelessWidget {
  final double previousPrice;
  final double price;
  ProductCardRow({@required this.previousPrice, @required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(CustomIcons.favourite),
            onPressed: () {},
          ),
          Column(
            children: <Widget>[
              Text(
                "\$${previousPrice.toString()}",
                style: TextStyle(
                    color: Color(0xFFfeb0ba),
                    fontSize: 16.0,
                    fontFamily: "Helvetica"),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                "\$${price.toString()}",
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: "Helvetica",
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(CustomIcons.cart),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
