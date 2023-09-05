import 'package:flutter/material.dart';

class Divider extends StatelessWidget {
  const Divider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 116.78,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.53,
            strokeAlign: StrokeAlign.center,
            color: Color(0xFFE8ECF4),
          ),
        ),
      ),
    );
  }
}
