import 'package:flutter/material.dart';
import 'dart:math';

class TriangularButton extends StatefulWidget {
  final double size;
  final Function() onPressed;

  TriangularButton({required this.size, required this.onPressed});

  @override
  _TriangularButtonState createState() => _TriangularButtonState();
}

class _TriangularButtonState extends State<TriangularButton> {
  Color _buttonColor = Colors.black; // Cor inicial do botão

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          // Atualiza a cor do botão quando pressionado
          _buttonColor = Colors.red; // Altere para a cor desejada
        });
      },
      onTapCancel: () {
        setState(() {
          // Retorna à cor original se o toque for cancelado
          _buttonColor = Colors.black; // Altere para a cor desejada
        });
      },
      onTap: () {
        setState(() {
          // Retorna à cor original quando o botão é solto
          _buttonColor = Colors.black; // Altere para a cor desejada
        });
        widget.onPressed(); // Chama a função onPressed fornecida
      },
      child: CustomPaint(
        size: Size(widget.size, widget.size),
        painter: TriangularButtonPainter(color: _buttonColor),
      ),
    );
  }
}

class TriangularButtonPainter extends CustomPainter {
  final Color color;

  TriangularButtonPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color // Usa a cor fornecida
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

