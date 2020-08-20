import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie_world/pages/CartScreen.dart';
import 'package:foodie_world/widgets/HeadingText.dart';

import 'BackIcon.dart';

class shopcart extends StatelessWidget {
  const shopcart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(FontAwesomeIcons.shoppingBag),
      iconSize: 24.0,
      color: Colors.black54,
      onPressed: () {
        print('cart button was pressed ');
        Navigator.push(context, MaterialPageRoute(builder: (context) => CartSceeen(),),);
      },
    );
  }
}

