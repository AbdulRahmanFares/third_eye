import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_eye/constants.dart';
import 'package:third_eye/screens/forgot_password.dart';
import 'package:third_eye/screens/home.dart';
import 'package:third_eye/screens/sign_up.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final obj = Constants();

  @override
  Widget build(BuildContext context) {

    // Device's screen size
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return ColorfulSafeArea(
      color: obj.redShade,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                ClipPath(
                  clipper: MyCustomClipper(),
                  child: Container(
                    height: screenHeight * 0.6,
                    width: screenWidth,
                    color: obj.redShade
                  )
                )
              ]
            ),

            // Login
            Center(
              child: Container(
                height: screenHeight * 0.65,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: obj.redShade,
                    width: screenWidth * 0.003
                  ),
                  borderRadius: BorderRadius.circular(screenWidth * 0.1)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "LOGIN",
                      style: GoogleFonts.poppins(
                        fontSize: screenWidth * 0.08,
                        fontWeight: FontWeight.bold,
                        color: obj.redShade,
                        letterSpacing: 2
                      )
                    ),

                    // Email
                    Container(
                      margin: EdgeInsets.only(
                        top: screenWidth * 0.1,
                        bottom: screenWidth * 0.07
                      ),
                      padding: EdgeInsets.only(
                        left: screenWidth * 0.07
                      ),
                      height: screenHeight * 0.07,
                      width: screenWidth * 0.75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black54
                        ),
                        borderRadius: BorderRadius.circular(screenWidth)
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          letterSpacing: 2
                        )
                      )
                    ),

                    // Password
                    Container(
                      margin: EdgeInsets.only(bottom: screenWidth * 0.03),
                      padding: EdgeInsets.only(
                        left: screenWidth * 0.07
                      ),
                      height: screenHeight * 0.07,
                      width: screenWidth * 0.75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black54
                        ),
                        borderRadius: BorderRadius.circular(screenWidth)
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          letterSpacing: 2
                        )
                      )
                    ),

                    // Forgot password
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.075),
                        child: GestureDetector(
                          onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => const ForgotPassword() // Navigate to forgot password page
                          )),
                          child: Text(
                            "Forgot password?",
                            style: GoogleFonts.poppins(
                              fontSize: screenWidth * 0.035,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                              letterSpacing: 1
                            )
                          )
                        )
                      )
                    ),
                    SizedBox(
                      height: screenWidth * 0.07
                    ),

                    // Login Button
                    ElevatedButton(
                      onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => const Home() // Navigate to home page
                      )),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: obj.redShade,
                        fixedSize: Size(screenWidth * 0.75, screenHeight * 0.07)
                      ),
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          letterSpacing: 2
                        )
                      )
                    ),
                    SizedBox(
                      height: screenWidth * 0.03
                    ),

                    // Sign up
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => const SignUp() // Navigate to sign up page
                      )),
                      child: Text(
                        "Become a member",
                        style: GoogleFonts.poppins(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          letterSpacing: 1
                        )
                      )
                    )
                  ]
                )
              )
            )
          ]
        )
      )
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height * 0.5);
    path.lineTo(width, height);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

