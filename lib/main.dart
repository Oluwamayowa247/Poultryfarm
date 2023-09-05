import 'package:flutter/material.dart';
import 'package:poultry_farm/screens/poultry_intro_screen.dart';

void main() {
  runApp(PoultryFarmApp());
}

class PoultryFarmApp extends StatelessWidget {
  const PoultryFarmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PoultryIntro(),
    );
  }
}
