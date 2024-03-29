import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_delivery_app/constants/colors.dart';

import 'package:food_delivery_app/models/food.dart';

class FoodItem extends StatefulWidget {
  final Food food;
  const FoodItem({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  late bool _isFavorited;
  late int _favoriteCount;

  @override
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount += 1;
        _isFavorited = false;
      } else {
        _favoriteCount -= 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.all(5),
              width: 110,
              height: 110,
              child: Image.asset(
                widget.food.imgUrl.toString(),
                fit: BoxFit.fitHeight,
              )),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.food.name.toString(),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.5),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                      )
                    ],
                  ),
                  Text(
                    widget.food.desc.toString(),
                    style: TextStyle(
                        color: widget.food.highLight
                            ? kPrimaryColor
                            : Colors.grey.withOpacity(0.8)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.food.price.toString(),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
