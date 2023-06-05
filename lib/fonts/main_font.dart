import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/colors.dart';





class mainFont extends StatelessWidget {
  final String text;
  

  mainFont({super.key,
          this.text = "Flying private has never been easier",
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
                fontSize: 25,
                fontWeight: FontWeight.bold
                
              )

            )
           ),
  );
  }
}