import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/colors.dart';





class paraFont extends StatelessWidget {
  final String text;
  

  paraFont({super.key,
          required this.text,
          });

  @override
  Widget build(BuildContext context) {
    return Text(
           text,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 255, 255, 255)
                
              )

            )
           );
  
  }
}

