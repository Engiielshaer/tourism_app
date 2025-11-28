
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tourism_task/ui/utils/app_style.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName='WelcomeScreen';
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/welcome.png'),
           SizedBox(
            height:MediaQuery.of(context).size.height*.1,
          ),
          Text('Your Adventure Awaits',style: AppStyle.largeTitle,),
           SizedBox(
            height:MediaQuery.of(context).size.height*.01,
          ),
          Text('Explore,plan,Share,All in one app',style: AppStyle.subTitle,),
          SizedBox(
            height:MediaQuery.of(context).size.height*.03,
          ),
          SizedBox(
            width: 246,
            height: 48,
            child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff19283F),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    )),
                child: Text(
                  'Get started',
                  style: AppStyle.hintText.copyWith(color: Color(0xffF4F5F6)),
                )),
          ),

        ],
      ),
    );
  }
}
