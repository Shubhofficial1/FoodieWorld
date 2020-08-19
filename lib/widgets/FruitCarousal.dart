import 'package:flutter/material.dart';
import 'package:foodie_world/models/fruit.dart';
import 'package:foodie_world/pages/DetailsScreen.dart';

class fruitsCarousal extends StatelessWidget {
  fruitsCarousal({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              Text(
                'See All',
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 250,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: fruits.length,
              itemBuilder: (BuildContext context, int index) {
                Fruits fruit = fruits[index];
                return Stack(
                  alignment: Alignment.topCenter,
                  children: [
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 15.0),
                     child: Container(
                       height: 250,
                       width: 200,
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(20.0),
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
                   ),
                  ],
                );
              }),
        )
      ],
    );
  }
}
