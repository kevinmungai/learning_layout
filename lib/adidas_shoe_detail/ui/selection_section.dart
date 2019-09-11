import 'package:flutter/material.dart';
import 'package:learning_layout/adidas_shoe_detail/ui/simple_divider.dart';
import 'package:learning_layout/adidas_shoe_detail/utils/utils.dart';
import 'package:learning_layout/adidas_shoe_detail/data/data.dart';
import 'package:learning_layout/adidas_shoe_detail/ui/size_item.dart';

class SelectionSection extends StatefulWidget {
  @override
  _SelectionSectionState createState() => _SelectionSectionState();
}

class _SelectionSectionState extends State<SelectionSection> {
  int currentSizeIndex = 0;
  int count = 0;

  void increase() {
    setState(() {
      count += 1;
    });
  }

  void decrease() {
    if (count != 0) {
      setState(() {
        count -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: screenAwareSize(15.0, context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: screenAwareSize(38, context),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: sizeNumlist.map((item) {
                var index = sizeNumlist.indexOf(item);
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentSizeIndex = index;
                    });
                  },
                  child: SizeItem(
                    item: item,
                    isSelected: currentSizeIndex == index,
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: screenAwareSize(100, context),
              height: screenAwareSize(30, context),
              decoration: BoxDecoration(
                color: Color(0xFF525663),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Flexible(
                    flex: 3,
                    child: GestureDetector(
                      onTap: decrease,
                      child: Container(
                        height: double.infinity,
                        child: Center(
                          child: Text(
                            "-",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: "Montserrat-Bold",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SimpleDivider(),
                  Flexible(
                    flex: 3,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: double.infinity,
                        child: Center(
                          child: Text(
                            count.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: "Montserrat-Bold",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SimpleDivider(),
                  Flexible(
                    flex: 3,
                    child: GestureDetector(
                      onTap: increase,
                      child: Container(
                        height: double.infinity,
                        child: Center(
                          child: Text(
                            "+",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: "Montserrat-Bold",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
