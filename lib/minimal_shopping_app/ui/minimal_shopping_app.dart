import 'package:flutter/material.dart';
import 'package:learning_layout/minimal_shopping_app/ui/bottom_navigation_bar.dart';
import 'package:learning_layout/minimal_shopping_app/ui/logo.dart';
import 'package:learning_layout/minimal_shopping_app/ui/product_card.dart';

class MinimalShoppingApp extends StatefulWidget {
  @override
  _MinimalShoppingAppState createState() => _MinimalShoppingAppState();
}

class _MinimalShoppingAppState extends State<MinimalShoppingApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0.0),
        child: ListView(
          children: <Widget>[
            Logo(),
            ProductCard(
              cardColor: Color(0xFFfaecfb),
              imgUrl: "images/shoes_01.png",
              title: "Hybrid Rocket WNS",
              previousPrice: 999.0,
              price: 749.0,
            ),
            SizedBox(
              height: 32.0,
            ),
            ProductCard(
              cardColor: Color(0xFFf8e1da),
              imgUrl: "images/shoes_02.png",
              title: "Hybrid Runner ARS",
              previousPrice: 699.0,
              price: 599.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
