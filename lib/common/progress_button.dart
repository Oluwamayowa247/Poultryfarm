import 'package:flutter/material.dart';
import 'package:poultry_farm/common/progress_painter.dart';

class Button extends StatelessWidget {
  final double progress;
  final VoidCallback onPressed;
  const Button({super.key, required this.progress, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Color(0xFFFFE07F),
            ),
            color: Color(0xFFFFE07F),
            shape: BoxShape.circle,
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 6,
                color: Colors.white,
              ),
              color: Color(0xFFFFE07F),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Center(
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 25.0,
                ),
              ),
              onPressed: onPressed,
            ),
          ),
        ),
        // Positioned.(
        //   child: CustomPaint(
        //     painter: ProgressPainter(progress: progress),
        //   ),
      ],
    );
  }
}
