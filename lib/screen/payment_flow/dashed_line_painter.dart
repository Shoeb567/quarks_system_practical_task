import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashedLinePainter extends CustomPainter {
  final Color color;
  final double dashWidth;
  final double dashSpacing;

  DashedLinePainter(
      {this.color = Colors.black,
      this.dashWidth = 5.0,
      this.dashSpacing = 5.0});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    final double startX = 0.0;
    final double endX = size.width;
    double currentX = startX;

    while (currentX < endX) {
      canvas.drawLine(
        Offset(currentX, size.height / 2),
        Offset(currentX + dashWidth, size.height / 2),
        paint,
      );
      currentX += dashWidth + dashSpacing;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class DashedLine extends StatelessWidget {
  final double height;
  final Color color;
  final double dashWidth;
  final double dashSpacing;

  DashedLine(
      {this.height = 1.0,
      this.color = Colors.black,
      this.dashWidth = 5.0,
      this.dashSpacing = 5.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: CustomPaint(
        size: Size(double.infinity, height),
        painter: DashedLinePainter(
            color: color, dashWidth: dashWidth, dashSpacing: dashSpacing),
      ),
    );
  }
}
