import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;

  const CustomTextField({super.key, required this.hintText});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.hintText,
        filled: true,
        fillColor: Color(0xFFE8ECF4),
        labelStyle: TextStyle(
          color: Color(0xFF1E232C),
          fontSize: 16.0,
          fontFamily: 'SpaceGrotesk',
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
