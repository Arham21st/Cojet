import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/colors.dart';





class titleFont extends StatelessWidget {
  final String text;
  

  titleFont({super.key,
          this.text = "COJET",
          });

  @override
  Widget build(BuildContext context) {
    return  ShaderMask(
  blendMode: BlendMode.srcIn,
  shaderCallback: (Rect bounds) {
    return goldWhiteGradient.createShader(bounds);
  },
    child: Text(
           text,
           style: GoogleFonts.jacquesFrancoisShadow(
            textStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 80,
            ),
      ),
  ),
  );
  }
}