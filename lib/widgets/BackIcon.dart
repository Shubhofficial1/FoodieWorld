import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class back extends StatelessWidget {
  const back({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        onTap: () {
          print('back button pressed');
          Navigator.pop(context);
        },
        child: Icon(
          FontAwesomeIcons.angleLeft,
          size: 30.0,
          color: Colors.black,
        ),
      ),
    );
  }
}


