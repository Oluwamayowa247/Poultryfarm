import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String imgAsset;
  const CustomContainer({super.key, required this.imgAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.47,
      height: 58.92,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 0.53,
          color: Color(0xFFE8ECF4),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(12.63),
        ),
      ),
      child: Image.asset(
        imgAsset,
      ),
    );
  }
}
