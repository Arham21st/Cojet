import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/colors.dart';





class mainFont extends StatelessWidget {
  final String text;
  double fontSize;

  

  mainFont({super.key,
          required this.text, 
          required this.fontSize 
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
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
                
              )

            )
           ),
  );
  }
}