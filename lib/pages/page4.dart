import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:project1/background.dart';
import 'package:project1/widgets/main_button.dart';

import '../fonts/main_font.dart';
import '../fonts/para_font.dart';

class page4 extends StatefulWidget {
  const page4({super.key});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
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
                                  dotsCount: 4,
                                  position: 3,
                                  decorator: const DotsDecorator(
                                    size: Size(12.5, 12.5),
                                    activeSize: Size(12.5, 12.5),
                                    color: Colors.white,
                                    activeColor: Colors.amber,
                                  ),
                          ),
                        
                    
                    SizedBox(height: 10,),
                    mainFont(text: "The power of choice in your hands",fontSize: 25,),
                    SizedBox(height: 10,),
                    paraFont(text: "Choose where,when and how you want to fly and let COJET take care of the rest. See prices on existing option or create the one that’s right for you.",),
                    SizedBox(height: 25,),
                    
            ],
          ),),
          mainButton(),
          Padding(padding: EdgeInsets.only(left: 30),
          child: Container(
              width: 150,
              height: 150,
              child: ClipOval(
                child: Container(
                  color: Colors.blue, // Replace with your desired background color
                  child: FractionallySizedBox(
                    widthFactor: 0.7, // Adjust this value to change the circle size (70% in this case)
                    heightFactor: 0.7, // Adjust this value to change the circle size (70% in this case)
                    child: CircleAvatar(
                     // backgroundImage: AssetImage('path_to_your_image.png'), // Replace with your desired image
        ),
      ),
    ),
  ),
)
)

            ],
          )
          
        ],
      ),
    );
  }
}