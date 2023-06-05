import 'package:flutter/material.dart';
import 'package:project1/background.dart';
import 'package:project1/fonts/title_font.dart';

import '../colors.dart';

class title_Page extends StatelessWidget {
  const title_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
          alignment: Alignment.center,
          children: [
            DottedBackground(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: goldWhiteGradient,
                  ),
                ),
                SizedBox(height: 10,),
                titleFont()
              ],
            )
        ]),
      );
    
  }
}