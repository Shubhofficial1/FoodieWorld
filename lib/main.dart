import 'package:flutter/material.dart';
import 'package:foodie_world/pages/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Color(0xFFDa401A),
            accentColor: Color(0xFFE9D8B2),
            scaffoldBackgroundColor: Color(0xFFF3F5F7),
        ),
        home: SplashScreen());
  }
}


