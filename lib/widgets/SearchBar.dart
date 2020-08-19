import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class search_bar extends StatelessWidget {
  const search_bar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        decoration: BoxDecoration(
        color: Color(0xffdcdcdc),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 16,color: Colors.black87),
            hintText: 'Search',
            suffixIcon: GestureDetector(
              onTap: (){
                print('Searching');
              },
               child: Icon(
                FontAwesomeIcons.search,
                size: 15.0,
                color: Colors.black,
              ),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15.0),
          ),
        ),
      ),
    );
  }
}

