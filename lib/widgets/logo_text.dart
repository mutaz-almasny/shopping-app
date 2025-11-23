import 'package:flutter/material.dart';
import 'package:project_1/app_colors.dart';

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [AppColors.primary, AppColors.secondary],
        begin: AlignmentGeometry.topLeft,
        end: AlignmentGeometry.bottomLeft,
      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: Text(
        "logo".toUpperCase(),
        style: TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.w400,
          fontFamily: "Prime",
          color: Colors.white,
        ),
      ),
    );
  }
}
