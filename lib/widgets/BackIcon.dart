import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class back extends StatelessWidget {
  const back({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: GestureDetector(
        onTap: () {
          print('back button pressed');
          Navigator.pop(context);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 35.0,
            width: 35.0,
            color: Color(0xffF5F5F5),
            child: Icon(
              FontAwesomeIcons.angleLeft,
              size: 25.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}


