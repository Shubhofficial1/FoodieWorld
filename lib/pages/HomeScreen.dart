import 'package:flutter/material.dart';
import 'package:foodie_world/widgets/DecideGridView.dart';
import 'package:foodie_world/widgets/SearchBar.dart';
import 'package:foodie_world/widgets/ShoppingCart.dart';
import 'ProductsScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fruits & Berries 🍊🍇',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24.0),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        actions: [
          shopcart(),
        ],
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 10.0,
            ),
            search_bar(),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Picks',
                    style: TextStyle(
                        letterSpacing: 1.5,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('see all link pressed');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductsScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            DecideGridView(),
          ],
        ),
      ),
    );
  }
}

