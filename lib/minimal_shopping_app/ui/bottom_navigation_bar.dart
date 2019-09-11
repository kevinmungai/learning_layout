import 'package:flutter/material.dart';
import 'package:learning_layout/minimal_shopping_app/ui/custom_icons.dart';

class BottomNavBar extends StatelessWidget {

  final List<Widget> bottomNavIconList = [
    Image.asset(
      "images/store.png",
      width: 35.0,
      height: 35.0,
    ),
    Icon(
      CustomIcons.search,
      size: 32.0,
    ),
    Icon(
      CustomIcons.favourite,
      size: 32.0,
    ),
    Icon(
      CustomIcons.cart,
      size: 32.0,
    ),
    Image.asset(
      "images/profile.png",
      width: 35.0,
      height: 35.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.065),
            offset: Offset(0.0, -3.0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Row(
          children: bottomNavIconList
              .map((item) => Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: item,
                    ),
                  ))
              .toList()),
    );
  }
}
