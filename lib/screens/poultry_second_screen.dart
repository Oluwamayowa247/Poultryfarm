import 'package:flutter/material.dart';
import 'package:poultry_farm/screens/welcome_back.dart';

import '../common/button.dart';

class PoultrySecondScreen extends StatelessWidget {
  const PoultrySecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Image.asset(
              'assets/images/img2.png',
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(right: 155.0),
              child: Text(
                'Lorem Ipsum',
                style: TextStyle(
                  color: Color(
                    0xFF263238,
                  ),
                  fontSize: 24.26,
                  fontFamily: 'SpaceGrotesk',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 150.0),
              child: Text(
                'is simply dummy\n text',
                style: TextStyle(
                  color: Color(0xFF263238),
                  fontSize: 24.26,
                  fontFamily: 'SpaceGrotesk',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 300.0,
              ),
              child: Button(
                progress: 0.5,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => WelcomeScreen()),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
