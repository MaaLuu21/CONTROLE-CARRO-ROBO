import 'package:flutter/material.dart';
import 'dart:math';

class TriangularButton extends StatelessWidget {
  final double size;
  final Function() onPressed;

  TriangularButton({required this.size, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
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
      ..color = Colors.white
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

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Triangular Button Example'),
        ),
        body: Center(
          child: TriangularButton(
            size: 100, // Tamanho do botão
            onPressed: () {
              // Função a ser executada quando o botão é pressionado
              print('Botão triangular pressionado!');
            },
          ),
        ),
      ),
    ));
