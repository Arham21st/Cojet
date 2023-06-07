import 'package:flutter/material.dart';

import '../colors.dart';
import '../fonts/main_font.dart';

class mainButton extends StatelessWidget {
  const mainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          
                        width: 270,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: goldWhiteGradient,
                          borderRadius: BorderRadius.circular(12)
                        ),
                      ),
                      Container(
                        
                        child: const Text("Next",
                         style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold,),
                         textAlign: TextAlign.center))
                      ],
                      
                    );
  }
}