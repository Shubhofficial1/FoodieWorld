import 'package:flutter/material.dart';
import 'package:foodie_world/widgets/ShoppingCart.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Shopping Cart'),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
