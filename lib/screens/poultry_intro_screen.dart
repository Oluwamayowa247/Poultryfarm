import 'package:flutter/material.dart';
import 'package:poultry_farm/common/button.dart';
import 'package:poultry_farm/screens/poultry_second_screen.dart';

class PoultryIntro extends StatefulWidget {
  const PoultryIntro({super.key});

  @override
  State<PoultryIntro> createState() => _PoultryIntroState();
}

class _PoultryIntroState extends State<PoultryIntro> {
  double progress = 0;

  void _navigateToNextScreen() {
    // setState(() {
    //   //   progress = 0.5;
    // });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PoultrySecondScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90.0,
          ),
          Image.asset(
            'assets/images/img1.png',
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 29.0,
            ),
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
            padding: const EdgeInsets.only(
              left: 29.0,
            ),
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 300.0,
            ),
            child: Button(progress: 0.5, onPressed: _navigateToNextScreen
                // ((context)
                //=> PoultrySecondScreen()),
                ),
          ),
        ],
      ),
    ));
  }
}
