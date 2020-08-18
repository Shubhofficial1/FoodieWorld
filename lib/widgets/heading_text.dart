import 'package:flutter/material.dart';
class heading_text extends StatelessWidget {
  const heading_text({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, right: 60.0),
      child: Text(
        'Fruits & berries',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            letterSpacing: 2),
      ),
    );
  }
}
