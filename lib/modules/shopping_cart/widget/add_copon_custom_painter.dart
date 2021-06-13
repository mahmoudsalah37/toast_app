import 'package:flutter/material.dart';

class AddCouponCustomPainter extends CustomPainter {
  final Color color;

  AddCouponCustomPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.01770367, size.height * 0.08004600);
    path_0.cubicTo(
        size.width * 0.009707756,
        size.height * 0.05339540,
        size.width * 0.02042967,
        size.height * 0.02103880,
        size.width * 0.03725667,
        size.height * 0.02103880);
    path_0.lineTo(size.width * 0.9999989, size.height * 0.02103880);
    path_0.lineTo(size.width * 0.9999989, size.height * 0.9810380);
    path_0.lineTo(size.width * 0.03725667, size.height * 0.9810380);
    path_0.cubicTo(
        size.width * 0.02042967,
        size.height * 0.9810380,
        size.width * 0.009707778,
        size.height * 0.9486820,
        size.width * 0.01770367,
        size.height * 0.9220320);
    path_0.lineTo(size.width * 0.1326067, size.height * 0.5390540);
    path_0.cubicTo(
        size.width * 0.1397244,
        size.height * 0.5153300,
        size.width * 0.1397244,
        size.height * 0.4867480,
        size.width * 0.1326067,
        size.height * 0.4630240);
    path_0.lineTo(size.width * 0.01770367, size.height * 0.08004600);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint0Stroke.color = Color(0xff2EA6FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color;
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
