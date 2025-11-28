import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/app_style.dart';

class Screen3 extends StatelessWidget {
  PageController controller;
    Screen3({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return
       Column(
        children: [
          Image.asset('assets/images/onboard3.png'),
          const SizedBox(
            height: 50,
          ),
          SmoothPageIndicator(
              controller: controller,
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
          Text('Share Your Adventures',style: AppStyle.largeTitle,),
          Text('Connect With Travelers.Relive your Favorite Moments',style: AppStyle.subTitle,)
        ],
      );

  }
}