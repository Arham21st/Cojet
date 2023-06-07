import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:project1/background.dart';
import 'package:project1/fonts/main_font.dart';
import 'package:project1/fonts/para_font.dart';

import '../colors.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
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
                                  position: 1,
                                  decorator: const DotsDecorator(
                                    size: Size(12.5, 12.5),
                                    activeSize: Size(12.5, 12.5),
                                    color: Colors.white,
                                    activeColor: Colors.amber,
                                  ),
                          ),
                        
                    
                    SizedBox(height: 10,),
                    mainFont(text: "Books the whole plane or just seats you need",fontSize: 25,),
                    SizedBox(height: 10,),
                    paraFont(text: "COJET offers multiple ways to buy including private charter, individual seats on private jets and flexible options in between."),
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
                      
                    ),
                    SizedBox(height: 70,),
                    Padding(padding: EdgeInsets.only(left: 200),
                    child: Container(
                      height: 400,
                      child: CircleAvatar(
                          
                          radius: 200, // Adjust the radius as per your requirement
                          backgroundImage: AssetImage('assets/images/img2.jpg'), // Provide the image path
                          backgroundColor: Colors.black,
                        ),
                    ))

              ],
            ),
          
        ],
      ),
    );
  }
}