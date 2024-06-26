import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_eye/constants.dart';
import 'package:third_eye/screens/get_started.dart';
import 'package:third_eye/screens/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  final obj = Constants();
  bool alreadyLoggedIn = false;

  @override
  void initState() {
    super.initState();
    alreadyLoggedIn ? navigateToLoginPage() : navigateToGetStartedPage();
  }

  navigateToGetStartedPage() async {
    await Future.delayed(const Duration(seconds: 5));

    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => const GetStarted() // Navigate to get started page
    ));
  }

  navigateToLoginPage() async {
    await Future.delayed(const Duration(seconds: 5));

    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => const Login() // Navigate to login page
    ));
  }

  @override
  Widget build(BuildContext context) {

    // Device's screen size
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.28,
                  color: obj.blueShade
                ),
                Text(
                  " THIRD",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.1,
                    fontWeight: FontWeight.bold,
                    color: obj.blackShade,
                    letterSpacing: 2
                  )
                )
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: screenHeight * 0.05,
                  width: screenHeight * 0.05,
                  color: obj.blackShade
                ),
                Text(
                  "YE ",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.1,
                    fontWeight: FontWeight.bold,
                    color: obj.blackShade,
                    letterSpacing: 2
                  )
                ),
                Container(
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.28,
                  color: obj.redShade
                )
              ]
            )
          ]
        )
      )
    );
  }
}

