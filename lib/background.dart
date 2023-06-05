import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DottedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: CustomPaint(
        painter: DottedPainter(),
        child: Container(),
        
      ),
    );
  }
}

class DottedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color.fromARGB(255, 65, 65, 65).withOpacity(0.26)
      ..strokeWidth = 1
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;

    final dotSpacing = 38;
    final lineSpacing = 38;
    final dotRadius = 8.5;

    for (double i = 0; i < size.height; i += lineSpacing) {
      for (double j = 0; j < size.width; j += dotSpacing) {
        //for(double k =1; k<size.height; k +=10){
        canvas.drawCircle(Offset(j,i+19), dotRadius, paint);
        canvas.drawCircle(Offset(j+19, i), dotRadius, paint);
      //  }
      } 
         }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
