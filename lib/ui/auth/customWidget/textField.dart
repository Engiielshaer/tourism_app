
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourism_task/ui/utils/app_style.dart';

class BuildTextField extends StatelessWidget {
  bool obsecure;
  String text;
  IconData? icon;
    BuildTextField({super.key,required this.obsecure,required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecure,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: AppStyle.hintText,

        suffixIcon: icon !=null ? Icon(icon,color: Color(0xffA1A8B2),) : null ,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xffDADCE0)
          )
        )
      ),
    );
  }
}
