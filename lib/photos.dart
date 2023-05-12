import 'package:flutter/material.dart';
import 'dart:math';
//import 'package:percent_indicator/percent_indicator.dart';

class Photos extends StatefulWidget {
  static const String id ='photos';

  @override
  _PhotosState createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  double get randHeight => Random().nextInt(100).toDouble();



  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(

      controller: controller,
      children: const <Widget>[
        Center(
          child: Text('First Page'),
        ),
        Center(
          child: Text('Second Page'),
        ),
        Center(
          child: Text('Third Page'),
        )
      ],
    );
  }
}

