import 'package:flutter/material.dart';
import 'package:poultry_farm/common/common_button.dart';
import 'package:poultry_farm/common/custom_back_button.dart';
import 'package:poultry_farm/common/custom_divider.dart';
import 'package:poultry_farm/common/custom_text_field.dart';

import '../common/custom_container.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 22.0, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(
                onPressed: () => Navigator.pop(context),
              ),
              SizedBox(
                height: 25,
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
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Column(
                  children: [
                    CustomTextField(hintText: 'Username'),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextField(hintText: 'Phone Number'),
                  ],
                ),
              ),
              SizedBox(
                height: 29,
              ),
              CommonButton(
                buttonText: 'Send OTP',
                onTap: () {},
              ),
              SizedBox(
                height: 29,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomDivider(),
                  Text(
                    'Or Register with',
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
            ],
          ),
        ),
      ),
    );
  }
}
