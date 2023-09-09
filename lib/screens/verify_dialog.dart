import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class VerifyDialog extends StatefulWidget {
  const VerifyDialog({super.key});

  @override
  State<VerifyDialog> createState() => _VerifyDialogState();
}

class _VerifyDialogState extends State<VerifyDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Container(
        height: 402.94,
        width: 314.15,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottie/tick.json',
              fit: BoxFit.cover,
              width: 110,
              height: 110,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Registered!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                fontFamily: 'SpaceGrotesk',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('You registered successfully'),

            // height: 300,
            // width: 200,
          ],
        ),
      ),
    );
  }
}
