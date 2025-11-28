
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism_task/ui/auth/customWidget/textField.dart';
import 'package:tourism_task/ui/auth/forgetPassword/forgetPassword_screen.dart';
import 'package:tourism_task/ui/auth/signup/signUp_screen.dart';
import 'package:tourism_task/ui/screens/welcome/welcome_screen.dart';
import 'package:tourism_task/ui/utils/app_style.dart';

class LoginScreen extends StatelessWidget {
  static const routeName='LoginScreen';
  const LoginScreen({super.key});

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
                'Login',
                style: AppStyle.largeTitle,
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height*.023,
              ),
              BuildTextField(
                  obsecure: false,
                  text: 'E mail'),
              SizedBox(
                height:MediaQuery.of(context).size.height*.02,
              ),
              BuildTextField(
                  icon: Icons.remove_red_eye_outlined,
                  obsecure: true,
                  text: 'Password'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, ForgetPasswordScreen.routeName);
                    },
                    child: Text(
                      'Forget Password?',
                      style: AppStyle.hintText.copyWith(color: Color(0xff19283F)),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height*.03,
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, WelcomeScreen.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff19283F),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                        )
                    ),
                    child: Text(
                      'Next',
                      style: AppStyle.hintText.copyWith(color: Color(0xffF4F5F6)),
                    )),
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height*.05,
              ),
              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                        'Or with',
                        style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700,color:Color(0xff697E83),
                        )),
                  ),
                  Expanded(child: Divider())
                ],
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height*.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/google.png',width: 60,height: 60),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('assets/images/facebook.png',width: 60,height: 60,),
                  )
                ],
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height*.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Do not Have an account?',
                    style: AppStyle.hintText.copyWith(color: Color(0xff000000),fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, SignUpScreen.routeName);
                      },
                      child: Text('Sign up'))
                ],
              )
          
            ],
          ),
        ),
      ),
    );
  }
}
