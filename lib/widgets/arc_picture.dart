import 'dart:math';
import 'package:flutter/material.dart';

class arcPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 400, left: 50),
      width: 200,
      height: 200,
      child: CustomPaint(
        painter: ArcImagePainter(),
       
      ),
    );
  }
}

class ArcImagePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width/2;
    final rect = Rect.fromCircle(center: Offset(radius, radius), radius: radius);
    final startAngle = -pi / -3.5; // Adjust the start angle as per your requirement
    final sweepAngle = 2 * pi/1.4; // Adjust the sweep angle as per your requirement
    final useCenter = false;
    final paint = Paint()
      ..color = Colors.blue // Replace with your desired arc color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
     // ..style = Image.asset("assets/images/img2.jpg",width: 100,height: 100,) as PaintingStyle;
      
      

    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
