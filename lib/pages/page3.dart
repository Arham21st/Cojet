import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:project1/background.dart';
import 'package:project1/fonts/main_font.dart';
import 'package:project1/fonts/para_font.dart';
import '../colors.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
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
                                  position: 2,
                                  decorator: const DotsDecorator(
                                    size: Size(12.5, 12.5),
                                    activeSize: Size(12.5, 12.5),
                                    color: Colors.white,
                                    activeColor: Colors.amber,
                                  ),
                          ),
                        
                    
                    SizedBox(height: 10,),
                    mainFont(text: "Allow location services",fontSize: 25,),
                    SizedBox(height: 10,),
                    paraFont(text: "You need to allow location services to receive deals near you.",),
                    SizedBox(height: 25,),
                    
                    
                  ],
                ),),
                Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          
                        width: 270,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white,strokeAlign: BorderSide.strokeAlignCenter,width: 2.0)
                        ),
                      ),
                      Container(
                        
                        child: mainFont(text: "Allow", fontSize: 20,)),
                        
                      ],
                      
                    ),
                     SizedBox(height: 20,),
                    Stack(
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