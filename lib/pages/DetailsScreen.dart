import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie_world/models/fruit.dart';
import 'package:foodie_world/widgets/ShoppingCart.dart';

class DetailsPage extends StatefulWidget {
  final Fruits fruit;
  DetailsPage({Key key, this.fruit}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.greenAccent,
                  child: Hero(
                    tag: widget.fruit.imageUrl,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image(
                        height: MediaQuery.of(context).size.width,
                        width: MediaQuery.of(context).size.width,
                        image: AssetImage(widget.fruit.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: shopcart(),
                ),
                Positioned(
                  bottom: 0.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60.0),
                        topRight: Radius.circular(60.0)),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 1.2,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: SafeArea(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 30.0, top: 50.0, right: 30.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.fruit.name,
                                    style: TextStyle(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.0, right: 30.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '${widget.fruit.quantity} piece',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.5,
                                        color: Colors.black87),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 30.0, right: 30.0, top: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10.0),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                print('minus button pressed');
                                                setState(() {
                                                  if (widget.fruit.quantity > 1) {
                                                    widget.fruit.quantity--;
                                                  } else {
                                                    widget.fruit.quantity = 1;
                                                  }
                                                  print(widget.fruit.quantity);
                                                });
                                              },
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10.0),
                                                    bottomLeft:
                                                        Radius.circular(10.0)),
                                                child: Container(
                                                  height: 40.0,
                                                  width: 40.0,
                                                  color: Color(0xffdcdcdc),
                                                  child: Icon(
                                                    FontAwesomeIcons.minus,
                                                    size: 15.0,
                                                    color: Colors.black38,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 40.0,
                                              width: 40.0,
                                              color: Color(0xffdcdcdc),
                                              child: Center(
                                                child: Text(
                                                  '${widget.fruit.quantity}',
                                                  style: TextStyle(
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                print('plus button pressed');
                                                setState(() {
                                                  if (widget.fruit.quantity >=
                                                      10) {
                                                    widget.fruit.quantity = 10;
                                                  } else {
                                                    widget.fruit.quantity++;
                                                  }
                                                  print(widget.fruit.quantity);
                                                });
                                              },
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10.0),
                                                    bottomRight:
                                                        Radius.circular(10.0)),
                                                child: Container(
                                                  height: 40.0,
                                                  width: 40.0,
                                                  color: Color(0xffdcdcdc),
                                                  child: Icon(
                                                    FontAwesomeIcons.plus,
                                                    size: 15.0,
                                                    color: Colors.black38,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    '₹ ${(widget.fruit.price) * (widget.fruit.quantity)} ',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 30.0, right: 30.0, top: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Product Description',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(
                                  left: 30.0, right: 30.0, top: 10.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.fruit.description,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ]),
                            ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.yellow,
                                  child: Center(
                                    child: Text(
                                      'Add to Cart',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
