
import 'package:flutter/material.dart';
import 'package:tourism_task/ui/auth/customWidget/textField.dart';
import 'package:tourism_task/ui/utils/app_style.dart';

class ForgetPasswordScreen extends StatelessWidget {
  static const String routeName='ForgetPasswordScreen';
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F9FC),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*.20,
              ),
              const Text(
                'Forget Password',
                style: AppStyle.largeTitle,
              ),
              const Text(
                'Reset Your Account password and Re enter your account',
                style: AppStyle.subTitle,
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height*.09,
              ),
              BuildTextField(
                  icon: Icons.remove_red_eye_outlined,
                  obsecure: true,
                  text: 'Password'),
              SizedBox(
                height:MediaQuery.of(context).size.height*.02,
              ),
              BuildTextField(
                  icon: Icons.remove_red_eye_outlined,
                  obsecure: true,
                  text: 'Confirm Password'),
              SizedBox(
                height:MediaQuery.of(context).size.height*.07,
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff19283F),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                        )
                    ),
                    child: Text(
                      'Confirm',
                      style: AppStyle.hintText.copyWith(color: Color(0xffF4F5F6)),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
