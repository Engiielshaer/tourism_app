import 'package:flutter/material.dart';
import 'package:tourism_task/ui/auth/forgetPassword/forgetPassword_screen.dart';
import 'package:tourism_task/ui/auth/login/login_screen.dart';
import 'package:tourism_task/ui/auth/signup/signUp_screen.dart';
import 'package:tourism_task/ui/screens/onboarding/onboarbing_screen.dart';
import 'package:tourism_task/ui/screens/splash/splash.dart';
import 'package:tourism_task/ui/screens/welcome/welcome_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        SplashScreen.routeName:(_)=> SplashScreen(),
        OnBoardingScreen.routeName:(_)=>OnBoardingScreen(),
        SignUpScreen.routeName:(_)=> SignUpScreen(),
        LoginScreen.routeName:(_)=> LoginScreen(),
        ForgetPasswordScreen.routeName:(_)=>ForgetPasswordScreen(),
        WelcomeScreen.routeName:(_)=>WelcomeScreen()
      },
      initialRoute: SplashScreen.routeName,
    );



  }
}


