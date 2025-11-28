import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism_task/ui/auth/signup/signUp_screen.dart';
import 'package:tourism_task/ui/screens/onboarding/onboard_screens/screen1.dart';
import 'package:tourism_task/ui/screens/onboarding/onboard_screens/screen2.dart';
import 'package:tourism_task/ui/screens/onboarding/onboard_screens/screen3.dart';
import 'package:tourism_task/ui/utils/app_style.dart';


class OnBoardingScreen extends StatefulWidget {
  static const String routeName='OnBoardingScreen';

  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          PageView(
          controller: controller,
          children: [
            Screen1(controller: controller,),
            Screen2(controller: controller,),
            Screen3(controller: controller,)
          ],
        ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, SignUpScreen.routeName);
            },
            child: Container(
              alignment:Alignment(.9,-.87),
              child: Text(
                'Skip',
                style: AppStyle.subTitle.copyWith(color: Color(0xffF4F5F6),
                ),
              ),
            ),
          )
        ] 
      ),
    );
  }
}
