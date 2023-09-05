import 'package:flutter/material.dart';
import 'package:poultry_farm/common/custom_back_button.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22.0),
            child: CustomBackButton(
              onPressed: () => Navigator.pop(context),
            ),
          ),
          Text(
            'Hello! Register to get\n started',
            style: TextStyle(
              fontSize: 31.46,
              color: Color(0xFF1E232C),
              fontWeight: FontWeight.w900,
              fontFamily: 'SpaceGrotesk',
            ),
          ),
        ],
      )),
    );
  }
}
