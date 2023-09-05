import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final Function() onPressed;
  const CustomBackButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 0.53,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(12.63),
        ),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
      ),
    );
  }
}
