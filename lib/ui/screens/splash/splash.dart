import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:tourism_task/ui/screens/onboarding/onboarbing_screen.dart';



class SplashScreen extends StatefulWidget {
  static const String routeName='SplashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, OnBoardingScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/splash.png'),
    );
  }
}
