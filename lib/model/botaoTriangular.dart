import 'package:flutter/material.dart';
import 'dart:math';

class TriangularButton extends StatelessWidget {
  final double size;
  final Function() onPressed;

  const TriangularButton({Key? key, required this.size, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, 
      child: CustomPaint(
        size: Size(size, size),
        painter: TriangularButtonPainter(),
      ),
    );
  }
}

class TriangularButtonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black 
      ..style = PaintingStyle.fill;

    double halfWidth = size.width / 2;
    double height = sqrt(3) / 2 * size.width;

    Path path = Path()
      ..moveTo(0, height)
      ..lineTo(size.width, height)
      ..lineTo(halfWidth, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
