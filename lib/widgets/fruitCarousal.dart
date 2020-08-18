import 'package:flutter/material.dart';
import 'package:foodie_world/models/fruit.dart';

class fruitsCarousal extends StatelessWidget {
  fruitsCarousal({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
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
          height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: fruits.length,
              itemBuilder: (BuildContext context, int index) {
                Fruits fruit = fruits[index];
                return Container(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
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
                    ));
              }),
        )
      ],
    );
  }
}
