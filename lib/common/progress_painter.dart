import 'dart:math';

import 'package:flutter/material.dart';

class ProgressPainter extends CustomPainter {
  final double progress;
  ProgressPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      // ..strokeCap = StrokeCap.values[1]
      ..color = Colors.black
      ..style = PaintingStyle.values[1]; // Set the style to fill

    double centerX = size.width / 1.8;
    double centerY = size.height / 2;
    double radius = min(centerX, centerY);

    double sweepAngle = 360.0 * progress; // Calculate the sweep angle

    canvas.drawArc(
      Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
      -90.0 *
          (pi / 180.0), // Start angle in radians (corresponds to -90 degrees)
      sweepAngle * (pi / 180.0), // Sweep angle in radians
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
