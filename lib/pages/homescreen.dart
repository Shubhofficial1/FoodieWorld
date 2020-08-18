import 'package:flutter/material.dart';
import 'package:foodie_world/widgets/fruitCarousal.dart';
import 'package:foodie_world/widgets/heading_text.dart';
import 'package:foodie_world/widgets/search_bar.dart';
import 'package:foodie_world/widgets/shop_cart.dart';

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
            SizedBox(
              height: 10.0,
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



