import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_eye/constants.dart';
import 'package:third_eye/screens/login.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {

    final obj = Constants();

    // Device's screen size
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/get_started.jpg"
                ),
                fit: BoxFit.cover
              )
            )
          ),
          Positioned(
            top: screenHeight * 0.05,
            child: Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SECURE",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeight * 0.09,
                      fontWeight: FontWeight.w700,
                      color: obj.blackShade,
                      letterSpacing: 1
                    )
                  ),
                  Text(
                    "YOUR",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeight * 0.09,
                      fontWeight: FontWeight.w700,
                      color: obj.blackShade,
                      letterSpacing: 1
                    )
                  ),
                  Text(
                    "WORLD",
                    style: GoogleFonts.poppins(
                      fontSize: screenHeight * 0.09,
                      fontWeight: FontWeight.w700,
                      color: obj.greyShade,
                      letterSpacing: 1
                    )
                  ),
                  SizedBox(
                    height: screenHeight * 0.02
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: Row(
                      children: [
                        Text(
                          "with our",
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w600,
                            color: obj.blackShade,
                            letterSpacing: 1
                          )
                        ),
                        Text(
                          " SECURITY SOFTWARE",
                          style: GoogleFonts.poppins(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w600,
                            color: obj.greyShade,
                            letterSpacing: 1
                          )
                        )
                      ]
                    )
                  )
                ]
              )
            )
          ),
          Positioned(
            bottom: screenHeight * 0.07,
            left: screenWidth * 0.2,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => const Login() // Navigate to login page
                ));
              },
              child: Container(
                height: screenHeight * 0.07,
                width: screenWidth * 0.6,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: obj.greyShade,
                    width: screenWidth * 0.003
                  ),
                  borderRadius: BorderRadius.circular(screenWidth)
                ),
                alignment: Alignment.center,
                child: Text(
                  "Get Started",
                  style: GoogleFonts.poppins(
                    fontSize: screenWidth * 0.04,
                    color: obj.greyShade,
                    letterSpacing: 1
                  )
                )
              )
            )
          )
        ]
      )
    );
  }
}

