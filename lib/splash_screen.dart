import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/widgets/logo_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              crossAxisAlignment: .center,
              children: [
                const SizedBox(height: 140),
                const LogoText(),
                const SizedBox(height: 80),
                Image.asset("assets/images/vector.jpg", height: 300),
                const SizedBox(height: 15),
                Text(
                  "Lorem Ipsum".toUpperCase(),
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      "Lorem Ipsum is a dummy text\n         used as placeholder",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Color(0xfff515151),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        Positioned(
          left: 30,
          child: Column(
            children: [
              SvgPicture.asset("assets/images/line.svg", height: 300),
              SvgPicture.asset("assets/images/light.svg"),
            ],
          ),
        ),

        Positioned(
          left: 90,
          child: Column(
            children: [
              SvgPicture.asset("assets/images/line.svg", height: 270),
              const SizedBox(height: 15),
              SvgPicture.asset("assets/images/light.svg"),
            ],
          ),
        ),
      ],
    );
  }
}
