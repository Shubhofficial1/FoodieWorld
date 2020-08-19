import 'package:flutter/material.dart';
import 'package:foodie_world/widgets/FruitCarousal.dart';
import 'package:foodie_world/widgets/HeadingText.dart';
import 'package:foodie_world/widgets/SearchBar.dart';
import 'package:foodie_world/widgets/ShoppingCart.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          children: [
            Column(
              children: [
                shopcart(),
              ],
            ),
            heading_text(),
            SizedBox(
              height: 15.0,
            ),
            search_bar(),
            SizedBox(
              height: 20.0,
            ),
            fruitsCarousal()
          ],
        ),
      ),
    );
  }
}
