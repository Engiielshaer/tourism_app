import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/app_style.dart';


class Screen1 extends StatelessWidget {
  PageController controller;
    Screen1({super.key,required this.controller});

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
            Text('Explore New Horizon',style: AppStyle.largeTitle,),
            const SizedBox(
              height: 7,
            ),
            Text('Discover curated adventure and hidden gems',style: AppStyle.subTitle,),

          ],
        ),
          Container(
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
          )
    ]
      );

  }
}
