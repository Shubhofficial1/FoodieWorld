import 'dart:async';
import 'package:flutter/material.dart';
import 'DataGridView.dart';
import 'ShimmerGridView.dart';

class DecideGridView extends StatefulWidget {
  @override
  _DecideGridViewState createState() => _DecideGridViewState();
}

class _DecideGridViewState extends State<DecideGridView> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    Timer timer = Timer(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
    return isLoading ? ShimmerGridView() : DataGridView();
  }
}
