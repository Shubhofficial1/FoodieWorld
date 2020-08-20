import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie_world/models/fruit.dart';
import 'package:foodie_world/widgets/BackIcon.dart';
import 'package:foodie_world/widgets/ShoppingCart.dart';
import 'package:foodie_world/widgets/Wishlist.dart';

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
      body: Column(
        children: [
          Expanded(
            flex:8,
            child: Stack(
              children: [
                Hero(
                  tag: widget.fruit.imageUrl,
                  child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                    child: Image(
                      height: MediaQuery.of(context).size.width,
                      width: MediaQuery.of(context).size.width,
                      image: AssetImage(widget.fruit.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      back(),

                      Row(
                        children: [
                          WishListIcon(),
                          shopcart(),
                        ],
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            flex: 12,
            child:Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '${widget.fruit.quantity} piece',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                          color: Colors.black38),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Row(
                         children: [
                           GestureDetector(
                             onTap :(){
                               print('minus button clicked');
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
                             )
                           ),
                           GestureDetector(
                             onTap:(){
                               print('plus button clicked');
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
                        Text(
                            '₹ ${(widget.fruit.price) * (widget.fruit.quantity)}',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1

                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Text('Product Description',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1),)
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.fruit.description,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              height: 1.5,
                              letterSpacing: 1,
                            ),
                              maxLines: 6,
                              overflow: TextOverflow.ellipsis
                          )
                        ]),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: (){
                print('Add to cart button pressed');
              },
              child: Container(
                color: Colors.yellow,
                child: Center(
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        color: Colors.black87),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}