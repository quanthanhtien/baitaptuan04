// Nguyen Anh Quan
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/restaurant.dart';

class RestaurantInfo extends StatefulWidget {
  @override
  State<RestaurantInfo> createState() => _RestaurantInfoState();
}

class _RestaurantInfoState extends State<RestaurantInfo> {
  final restaurant = Restaurant.generateRestaurant();

  bool _isScored = false;

  void _toggleScore() {
    setState(() {
      if (_isScored) {
        restaurant.score -= 0.1;
        _isScored = false;
      } else {
        restaurant.score += 0.1;
        _isScored = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              restaurant.waitTime,
                              style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          restaurant.distance,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.6),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          restaurant.label,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.6),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    restaurant.logoUrl,
                    width: 80,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(restaurant.desc, style: TextStyle(fontSize: 16)),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        _isScored ? Icons.star : Icons.star_border,
                      ),
                      color: _isScored ? Colors.amber : null,
                      onPressed: () {
                        _toggleScore();
                      },
                    ),
                    Text('${restaurant.score}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
