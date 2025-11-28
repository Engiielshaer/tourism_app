import 'package:flutter/material.dart';
import 'package:tourism_task/ui/screens/onboarding/onboarbing_screen.dart';
import 'package:tourism_task/ui/screens/splash/splash.dart';


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
        OnBoardingScreen.routeName:(_)=>OnBoardingScreen()
      },
      initialRoute: SplashScreen.routeName,
    );



  }
}


