import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:foodie_world/models/fruit.dart';
import 'package:foodie_world/widgets/FruitCarousal.dart';
import 'package:foodie_world/widgets/HeadingText.dart';
import 'package:foodie_world/widgets/SearchBar.dart';
import 'package:foodie_world/widgets/ShoppingCart.dart';
import 'package:foodie_world/widgets/Wishlist.dart';

import 'DetailsScreen.dart';
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
        title: Text('Fruits & Berries 🍊🍇',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24.0),),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,
        actions: [
          shopcart(),
        ],
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: ListView(
//          padding: EdgeInsets.symmetric(vertical: 20.0),
          children: [
//            heading_text(),
            SizedBox(
              height: 15.0,
            ),
            search_bar(),
            SizedBox(
              height: 20.0,
            ),Padding(
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
                    onTap: (){
                      print('see all link pressed');
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsScreen(),),);
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
            Container(
              margin: EdgeInsets.all(20.0),
              child: StaggeredGridView.countBuilder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                crossAxisCount:2,
                mainAxisSpacing: 12.0,
                crossAxisSpacing: 12.0,
                itemCount: fruits.length,
                itemBuilder: (BuildContext context, int index) {
                  Fruits fruit = fruits[index];
                  return Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        height: 300,
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: GestureDetector(
                            onTap: (){
                              print('pic pressed ');
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(fruit: fruit,),),);
                            },
                            child: Hero(
                              tag:fruit.imageUrl,
                              child: Image(
                                height: 180.0,
                                width: 180.0,
                                image: AssetImage(
                                  fruit.imageUrl,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                staggeredTileBuilder: (int index) {
                  return StaggeredTile.count(1, index.isEven ? 1.6: 1.2);
                },

              ),
            ),
          ],
        ),
      ),
    );
  }
}
