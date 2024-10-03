import 'package:client/components/my_cart_tile.dart';
import 'package:client/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, retanurant, child) {
      final userCart = retanurant.cart;
      return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title:
                                const Text('Are you sure you want to clear the cart'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('cancel')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    context.read<Restaurant>().clearCart();
                                  },
                                  child: const Text('yes'))
                            ],
                          ));
                },
                icon: Icon(Icons.delete))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    final cartItem = userCart[index];
                    return MyCartTile(cartItem: cartItem);
                  }),
            )
          ],
        ),
      );
    });
  }
}
