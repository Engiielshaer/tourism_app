import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tourism_task/ui/auth/login/login_screen.dart';
import 'package:tourism_task/ui/auth/signup/signUp_screen.dart';

import '../../../utils/app_style.dart';


class Screen1 extends StatefulWidget {
  PageController controller;
    Screen1({super.key,required this.controller});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return
      Stack(
        children:[ Column(
          children: [
            Image.asset('assets/images/onboard1.png'),
            const SizedBox(
              height: 50,
            ),
            SmoothPageIndicator(
                controller: widget.controller,
                count: 3,
              effect:  const WormEffect(
                  spacing:  24.0,
                  dotWidth: 14,
                  dotHeight: 14,
                  dotColor:  Color(0xffD9D9D9),
                  activeDotColor:Color(0xff19283F)
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Explore New Horizon',style: AppStyle.largeTitle,),
            const SizedBox(
              height: 7,
            ),
            Text('Discover curated adventure and hidden gems',style: AppStyle.subTitle,),

          ],
        ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
            child: Container(
              alignment: Alignment(0,.93),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(),
                  Text(
                    'Next',
                    style: AppStyle.subTitle.copyWith(color: Color(0xff000000)),
                  ),
                ],
              ),
            ),
          )
    ]
      );

  }
}
