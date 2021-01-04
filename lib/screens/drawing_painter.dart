import 'package:digit_recognizer/utils/constants.dart';
import 'package:flutter/material.dart';

class DrawingPainter extends CustomPainter {

  final List<Offset> points;

  DrawingPainter(this.points);

  final Paint _paint = Paint()
  ..strokeCap=StrokeCap.round
  ..color= Colors.blue
  ..strokeWidth=Constants.strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    for(int i=0; i<points.length - 1;i++){
      if(points[i]!=null && points[i+1] !=null){
        canvas.drawLine(points[i], points[i+1], _paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}