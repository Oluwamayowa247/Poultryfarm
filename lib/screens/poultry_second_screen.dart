import 'package:flutter/material.dart';
import 'package:poultry_farm/common/custom_back_button.dart';
import 'package:poultry_farm/screens/welcome_back.dart';

import '../common/progress_button.dart';

class PoultrySecondScreen extends StatefulWidget {
  const PoultrySecondScreen({super.key});

  @override
  State<PoultrySecondScreen> createState() => _PoultrySecondScreenState();
}

class _PoultrySecondScreenState extends State<PoultrySecondScreen> {
  // double progress = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 280),
              child: CustomBackButton(
                onPressed: () => Navigator.pop(context),
              ),
            ),
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
