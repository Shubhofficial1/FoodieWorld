import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // ignore: must_call_super
  void initState() {
    Timer(
        Duration(seconds: 4),
        () => {
          Navigator.pop(context),
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              ),
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.red),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        radius: 50.0,
                        child: Icon(
                          FontAwesomeIcons.freeCodeCamp,
                          color: Colors.orange,
                          size: 50.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Foodie World',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
