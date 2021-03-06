import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:foodie_world/models/fruit.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      highlightColor: Colors.white,
      baseColor: Colors.grey[300],
      child: Container(
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
              ],
            );
          },
          staggeredTileBuilder: (int index) {
            return StaggeredTile.count(1, index.isEven ? 1.6: 1.2);
          },

        ),
      ),
    );
  }
}

