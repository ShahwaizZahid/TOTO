import 'package:client/components/my_receipt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeliveryProgessPage extends StatelessWidget {
  const DeliveryProgessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery in progess'),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          MyReceipt()
        ],
      ),
    );
  }
}
