
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism_task/ui/auth/customWidget/textField.dart';
import 'package:tourism_task/ui/utils/app_style.dart';

class ContactUs extends StatelessWidget {
  static const String routeName='ContactUs';
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(170),
        child: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10)
            ),
          ),
          backgroundColor: Color(0xff19283F),
          elevation: 0.0,
          flexibleSpace: Container(
            padding: EdgeInsets.only(top: 60),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('Contact Us',
                    style: AppStyle.largeTitle.copyWith(color: Color(0xffF6F9FC)),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('we are here to help you plan your trip',
                    style: AppStyle.hintText.copyWith(fontSize: 14,color: Color(0xffF6F9FC)),
                  ),
                ),],
            ),),
        ),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Text('Send a message',
                style: AppStyle.largeTitle.copyWith(fontSize: 20),
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height*.02,
              ),
              BuildTextField(obsecure: false, text: 'Name'),
              SizedBox(
                height:MediaQuery.of(context).size.height*.02,
              ),
              BuildTextField(obsecure: false, text: 'E Mail',),
              SizedBox(
                height:MediaQuery.of(context).size.height*.02,
              ),
              TextField(
                maxLines: 6,
                decoration: InputDecoration(
                    hintText: 'Write a message',
                    hintStyle: AppStyle.hintText,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                            color: Color(0xffDADCE0)
                        )
                    )
                ),
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height*.02,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text('Not more than 2000 letter',
                  style: AppStyle.subTitle.copyWith(color: Color(0xff706363),),
                ),
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height*.03,
              ),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                    onPressed: (){
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff19283F),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                        )
                    ),
                    child: Text(
                      'Send a message',
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
