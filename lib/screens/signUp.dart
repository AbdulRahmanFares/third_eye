import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:third_eye/constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

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

