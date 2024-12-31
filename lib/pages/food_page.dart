import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;

  const FoodPage({
    super.key,
    required this.food,
  });

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // food image
          Image.asset(widget.food.imagePath),

          // food name
          Text(widget.food.name),

          // addons
          ListView.builder(
            itemBuilder: (context, index) {
              return CheckboxListTile(
                value: false,
                onChanged: (value) {},
              );
            },
          )

          // button -> add
        ],
      ),
    );
  }
}
