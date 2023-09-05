import 'package:flutter/material.dart';
import 'package:poultry_farm/common/common_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 18),
              child: Container(
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
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Text(
                'Welcome back! Glad\n to see you, Again!',
                style: TextStyle(
                  color: Color(0xFF1E232C),
                  fontSize: 31.56,
                  fontFamily: 'SpaceGrotesk',
                  fontWeight: FontWeight.bold,
                  height: 1.30,
                  letterSpacing: -0.32,
                ),
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
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
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 15),
              child: CommonButton(
                buttonText: 'Send OTP',
              ),
            ),
            SizedBox(
              height: 98.08,
            ),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
