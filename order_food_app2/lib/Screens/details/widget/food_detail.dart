// Nguyen Anh Quan
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_delivery_app/Screens/details/widget/food_quantity.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/food.dart';

class FoodDetail extends StatefulWidget {
  final Food? food;
  FoodDetail({this.food});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  bool _isScored = false;
  int _quantity = 1;
  late double _price;
  late double _score; // Use 'late' keyword // Thêm biến này

  @override
  void initState() {
    super.initState();
    _score = widget.food!.score!.toDouble();
    _price = widget.food!.price!.toDouble();
    _quantity = widget.food!.quantity!.toInt();
    // Khởi tạo giá trị ban đầu cho _score
  }

  void _toggleScore() {
    setState(() {
      if (_isScored) {
        _score -= 0.1;
        _isScored = false;
      } else {
        _score += 0.1;
        _isScored = true;
      }
    });
  }

  void _increaseQuantity() {
    setState(() {
      _quantity++;
      _price = _quantity * widget.food!.price!.toDouble();
    });
  }

  void _decreaseQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
        _price = _quantity * widget.food!.price!.toDouble();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(25),
        color: kBackground,
        child: Column(
          children: [
            Text(
              widget.food!.name!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIconText(
                  Icons.access_time_outlined,
                  Colors.blue,
                  widget.food!.waitTIme!,
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        _isScored ? Icons.star : Icons.star_border,
                      ),
                      color: _isScored ? Colors.amber : null,
                      onPressed: _toggleScore,
                    ),
                    Text(_score.toStringAsFixed(1)),
                  ],
                ),
                _buildIconText(
                  Icons.local_fire_department_outlined,
                  Colors.red,
                  widget.food!.cal!,
                ),
              ],
            ),
            SizedBox(
              height: 39,
            ),
            Container(
              width: 220,
              height: 45, // Đặt chiều dài của Container
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 229, 229),
                borderRadius:
                    BorderRadius.circular(50), // Bo các góc với bán kính là 50
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      '\$',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      '$_price',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 218, 184, 52),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon:
                              Icon(Icons.remove, color: Colors.black, size: 20),
                          onPressed: _decreaseQuantity,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text(
                            '$_quantity',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w900),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.add, color: Colors.black, size: 20),
                          onPressed: _increaseQuantity,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 39,
            ),
            Row(
              children: [
                Text(
                  'Ingredienta',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                                widget.food!.ingredients![index].values.first,
                                width: 52),
                            Text(widget.food!.ingredients![index].keys.first),
                          ],
                        ),
                      ),
                  separatorBuilder: (_, index) => SizedBox(
                        width: 15,
                      ),
                  itemCount: widget.food!.ingredients!.length),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  'About',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              widget.food!.about!,
              style: TextStyle(fontSize: 16, wordSpacing: 1.2, height: 1.5),
            ),
            SizedBox(height: 20),
          ],
        ));
  }

  _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
