import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie_world/models/fruit.dart';
import 'package:foodie_world/widgets/ShoppingCart.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products Page'),
        elevation: 0.0,
        actions: [shopcart()],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                height: 100.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Aesthetic',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400
                        ),
                        children: [
                          TextSpan(
                            text: ' food Gallery',
                            style: TextStyle(fontSize: 20.0,
                            fontWeight: FontWeight.w300)
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.fastfood,
                      color: Colors.red,
                      size: 50.0,
                    )

                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                print('list tile pressed');
              },
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: fruits.length,
                itemBuilder: (BuildContext context, int index) {
                  Fruits fruit = fruits[index];
                  return Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0, top: 10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: Color(0xffffe8d6)
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 120.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image(
                                      image: AssetImage(fruit.imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 25.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          fruit.name,
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1),
                                        ),
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(5.0),
                                          child: Container(
                                            height: 25.0,
                                            width: 25.0,
                                            color: Colors.orangeAccent,
                                            child: Icon(
                                              Icons.add,
                                              size: 20.0,
                                              color: Theme.of(context).scaffoldBackgroundColor,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('⭐  (${fruit.rating})',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                        Text('\$ ${fruit.price}',style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold
                                        ),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
