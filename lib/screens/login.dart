import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:third_eye/constants.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

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

