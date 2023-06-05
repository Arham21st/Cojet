import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:project1/background.dart';
import 'package:project1/fonts/main_font.dart';
import 'package:project1/fonts/para_font.dart';

import '../colors.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DottedBackground(),
          
            
            Column(
              children: [
                Padding(padding: EdgeInsets.only(left: 30,right: 30,top: 120),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                        DotsIndicator(
                                  dotsCount: 5,
                                  position: 0,
                                  decorator: const DotsDecorator(
                                    size: Size(12.5, 12.5),
                                    activeSize: Size(12.5, 12.5),
                                    color: Colors.white,
                                    activeColor: Colors.amber,
                                  ),
                          ),
                        
                    
                    SizedBox(height: 10,),
                    mainFont(),
                    SizedBox(height: 10,),
                    paraFont(),
                    SizedBox(height: 25,),
                    
                    
                  ],
                ),),
                Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          
                        width: 270,
                        height: 40,
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
                      
                    )
              ],
            ),
          
        ],
      ),
    );
  }
}