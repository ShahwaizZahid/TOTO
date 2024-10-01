import 'package:flutter/cupertino.dart';

import '../models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const MyFoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (){},
          child: Row(
            children: [
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(food.name),
                Text(food.price.toString()),
                Text(food.description)
              ],)),

              SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset(food.imagePath, height: 120,width: 120,))
            ],
            
          ),
        )
      ],
    );
  }
}
