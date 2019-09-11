import 'package:flutter/material.dart';
import 'package:learning_layout/adidas_shoe_detail/utils/utils.dart';

class SizeItem extends StatelessWidget {
  final String item;
  final bool isSelected;

  SizeItem({@required this.item, @required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        width: screenAwareSize(30.0, context),
        height: screenAwareSize(30.0, context),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFFFC3930) : Color(0xFF525663),
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: isSelected ? Colors.black.withOpacity(0.5) : Colors.black12,
              offset: Offset(0.0, 1.0),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: Center(
          child: Text(item,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Montserrat-Bold",
          ),),
        ),
      ),
    );
  }
}
