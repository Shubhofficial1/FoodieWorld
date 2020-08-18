import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 60.0),
              child: Text(
                'Fruits & berries',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            search_bar(),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('card was pressed ');
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25.0),
                                  child: Image(
                                    height: 220.0,
                                    width: 160.0,
                                    image:
                                        AssetImage('assets/images/apple.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 10.0,
                                  top: 10.0,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Apple',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87),
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        '\$ 2.45/kg',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  right: 0.0,
                                  child: GestureDetector(
                                    onTap: () {
                                      print('plus icon pressed');
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            left: BorderSide(
                                                width: 3, color: Colors.white),
                                            top: BorderSide(
                                                width: 3, color: Colors.white),
                                          ),
                                        ),
                                        child: Icon(
                                          FontAwesomeIcons.plus,
                                          size: 20.0,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('plus icon pressed');
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25.0),
                                  child: Image(
                                    height: 220.0,
                                    width: 160.0,
                                    image:
                                        AssetImage('assets/images/banana.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 10.0,
                                  top: 10.0,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Banana',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87),
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        '\$ 2.45/kg',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  right: 0.0,
                                  child: GestureDetector(
                                    onTap: () {
                                      print('plus icon pressed');
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            left: BorderSide(
                                                width: 3, color: Colors.white),
                                            top: BorderSide(
                                                width: 3, color: Colors.white),
                                          ),
                                        ),
                                        child: Icon(
                                          FontAwesomeIcons.plus,
                                          size: 20.0,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('card was pressed ');
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25.0),
                                  child: Image(
                                    height: 220.0,
                                    width: 160.0,
                                    image:
                                        AssetImage('assets/images/avocado.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 10.0,
                                  top: 10.0,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Avacado',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87),
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        '\$ 2.45/kg',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  right: 0.0,
                                  child: GestureDetector(
                                    onTap: () {
                                      print('plus icon pressed');
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            left: BorderSide(
                                                width: 3, color: Colors.white),
                                            top: BorderSide(
                                                width: 3, color: Colors.white),
                                          ),
                                        ),
                                        child: Icon(
                                          FontAwesomeIcons.plus,
                                          size: 20.0,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('plus icon pressed');
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25.0),
                                  child: Image(
                                    height: 220.0,
                                    width: 160.0,
                                    image: AssetImage(
                                        'assets/images/strawberry.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 10.0,
                                  top: 10.0,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Strawberry',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87),
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        '\$ 2.45/kg',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  right: 0.0,
                                  child: GestureDetector(
                                    onTap: () {
                                      print('plus icon pressed');
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            left: BorderSide(
                                                width: 3, color: Colors.white),
                                            top: BorderSide(
                                                width: 3, color: Colors.white),
                                          ),
                                        ),
                                        child: Icon(
                                          FontAwesomeIcons.plus,
                                          size: 20.0,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('card was pressed ');
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25.0),
                                  child: Image(
                                    height: 220.0,
                                    width: 160.0,
                                    image:
                                        AssetImage('assets/images/citrus.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 10.0,
                                  top: 10.0,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Citrus',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87),
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        '\$ 2.45/kg',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  right: 0.0,
                                  child: GestureDetector(
                                    onTap: () {
                                      print('plus icon pressed');
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            left: BorderSide(
                                                width: 3, color: Colors.white),
                                            top: BorderSide(
                                                width: 3, color: Colors.white),
                                          ),
                                        ),
                                        child: Icon(
                                          FontAwesomeIcons.plus,
                                          size: 20.0,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('plus icon pressed');
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25.0),
                                  child: Image(
                                    height: 220.0,
                                    width: 160.0,
                                    image: AssetImage(
                                        'assets/images/pineapple.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 10.0,
                                  top: 10.0,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Pineapple',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87),
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        '\$ 2.45/kg',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  right: 0.0,
                                  child: GestureDetector(
                                    onTap: () {
                                      print('plus icon pressed');
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(3.0),
                                      child: Container(
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            left: BorderSide(
                                                width: 3, color: Colors.white),
                                            top: BorderSide(
                                                width: 3, color: Colors.white),
                                          ),
                                        ),
                                        child: Icon(
                                          FontAwesomeIcons.plus,
                                          size: 20.0,
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

