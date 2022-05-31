import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zero_waste/screens/login_screen.dart';
import 'package:zero_waste/screens/sign_up_screen.dart';
import 'package:zero_waste/screens/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zero Waste',
      home: const SplashScreen(),
    ),
  );
}
