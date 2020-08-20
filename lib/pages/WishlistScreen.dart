import 'package:flutter/material.dart';
import 'package:foodie_world/widgets/ShoppingCart.dart';

class WishlistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist Page'),
        actions: [
          shopcart()
        ],
      ),
    );
  }
}
