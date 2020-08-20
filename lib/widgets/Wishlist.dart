import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WishListIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('wish list button pressed');
      },
      child: Icon(
        FontAwesomeIcons.bookmark,
        size: 20.0,
        color: Colors.black87,
      ),
    );
  }
}
