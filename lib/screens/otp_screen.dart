import 'package:flutter/material.dart';
import 'package:poultry_farm/common/custom_back_button.dart';
import 'package:poultry_farm/common/otp_digits_box.dart';
//import 'package:poultry_farm/screens/hello_screen.dart';
import 'package:poultry_farm/screens/verify_dialog.dart';

import '../common/common_button.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final List<TextEditingController> controllers =
      List.generate(4, (index) => TextEditingController());
  final List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());

  @override
  void dispose() {
    for (int i = 0; i < controllers.length; i++) {
      controllers[i].dispose();
      focusNodes[i].dispose();
    }
    super.dispose();
  }

  void printOTP() {
    String otp = '';
    for (int i = 0; i < controllers.length; i++) {
      otp += controllers[i].text;
    }
    print("The OTP Code is $otp");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              CustomBackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'OTP Verification',
                style: TextStyle(
                  fontFamily: 'SpaceGrotesk',
                  fontSize: 31.46,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Enter the verification code we just sent on \n your email address',
                style: TextStyle(
                  fontFamily: 'SpaceGrotesk',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (int i = 0; i < controllers.length; i++)
                    OtpDigitsBox(
                      controller: controllers[i],
                      focusNode: focusNodes[i],
                    ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              CommonButton(
                buttonText: 'Verify',
                onTap: () {
                  printOTP();
                  showDialog(
                    context: context,
                    builder: (context) => VerifyDialog(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
