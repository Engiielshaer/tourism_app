import 'package:flutter/material.dart';
import 'package:tourism_task/ui/auth/forgetPassword/forgetPassword_screen.dart';
import 'package:tourism_task/ui/auth/login/login_screen.dart';
import 'package:tourism_task/ui/auth/signup/signUp_screen.dart';
import 'package:tourism_task/ui/screens/contactUs/contactUs.dart';
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
        SplashScreen.routeName:(_)=>const SplashScreen(),
        OnBoardingScreen.routeName:(_)=>const OnBoardingScreen(),
        SignUpScreen.routeName:(_)=>const SignUpScreen(),
        LoginScreen.routeName:(_)=>const LoginScreen(),
        ForgetPasswordScreen.routeName:(_)=>const ForgetPasswordScreen(),
        WelcomeScreen.routeName:(_)=>const WelcomeScreen(),
        ContactUs.routeName: (_)=>const ContactUs()
      },
      initialRoute: ContactUs.routeName,
    );



  }
}


