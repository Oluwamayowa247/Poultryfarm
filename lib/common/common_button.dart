import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String buttonText;
  final Function() onTap;
  const CommonButton(
      {super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 359,
        height: 58.92,
        decoration: BoxDecoration(
          color: Color(0xFFFFC100),
          borderRadius: BorderRadius.all(
            Radius.circular(12.63),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 17.46,
            bottom: 17.46,
          ),
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'SpaceGrotesk',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
