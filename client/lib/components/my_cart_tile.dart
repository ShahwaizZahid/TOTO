import 'package:client/components/my_quantity_selector.dart';
import 'package:client/models/card_item.dart';
import 'package:client/models/restaurant.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CardItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, retanurant, child) => Container(
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    cartItem.food.imagePath,
                    height: 100,
                    width: 100,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cartItem.food.name),
                    Text('\$${cartItem.food.price}'),
                  ],
                ),
                MyQuantitySelector(
                    quantity: cartItem.quantity,
                    food: cartItem.food,
                    onIncrement: () {
                      context.read<Restaurant>().addToCard(cartItem.food, cartItem.selectedAddons);
                    },
                    onDecrement: () {
                      context.read<Restaurant>().removeFromCard(cartItem);
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
