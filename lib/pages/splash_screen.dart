import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:catelog_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: Lottie.asset('assets/lottie/login_lottie.json'),
          nextScreen: HomePage()),
    );
  }
}
