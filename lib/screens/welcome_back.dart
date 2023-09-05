import 'package:flutter/material.dart';
import 'package:poultry_farm/common/common_button.dart';
import 'package:poultry_farm/common/custom_container.dart';
import 'package:poultry_farm/common/custom_text_field.dart';
import 'package:poultry_farm/screens/hello_screen.dart';

import '../common/custom_divider.dart';

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
                child: CustomTextField(
                  hintText: 'Phone Number',
                )),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 15),
              child: CommonButton(
                buttonText: 'Send OTP',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => HelloScreen()),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomDivider(),
                Text(
                  'Or Login with',
                  style: TextStyle(
                    color: Color(0xFF6A707C),
                    fontSize: 14.73,
                    fontFamily: 'SpaceGrotesk',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CustomDivider(),
              ],
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomContainer(
                  imgAsset: 'assets/images/facebook.png',
                ),
                CustomContainer(
                  imgAsset: 'assets/images/google.png',
                ),
                CustomContainer(
                  imgAsset: 'assets/images/apple.png',
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 62.0, left: 62),
              child: RichText(
                  text: TextSpan(
                text: 'Don\'t have an account? ',
                style: TextStyle(
                  color: Color(0xFF6A707C),
                  fontSize: 14,
                  fontFamily: 'SpaceGrotesk',
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  TextSpan(
                    text: ' Register Now',
                    style: TextStyle(
                      color: Color(0xFFFFC100),
                      fontSize: 14,
                      fontFamily: 'SpaceGrotesk',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
