import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:third_eye/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final obj = Constants();
  
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: obj.greyShade,
      child: Scaffold(
        backgroundColor: obj.greyShade
      )
    );
  }
}

