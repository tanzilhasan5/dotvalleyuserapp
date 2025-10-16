import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/color.dart';

class CustomTextField extends StatelessWidget {
  final FormFieldValidator<String>? validator;

  CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.returnText,

  });
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final prefixIcon;
  final suffixIcon;
  final String? returnText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value){
        if (value == null || value.isEmpty){
          return  returnText;
        }else{
          return null;
        }
      },
      decoration:InputDecoration(
          hintText: hintText,hintStyle: TextStyle(color: AppColor.textColor,fontSize: 11.95),
          labelText: labelText,labelStyle: TextStyle(fontSize: 15,color: Colors.black),
          // suffixText: suffixText,suffixStyle: TextStyle(color: AppColor.textColor,fontSize: 11.95),
          prefixIcon: prefixIcon,prefixIconColor: AppColor.TextFieldColor,
          suffixIcon:suffixIcon,suffixIconColor: AppColor.TextFieldColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColor.TextFieldColor,  // Border color when not focused
              width: 2,          // Border width when not focused
            ),
          ),
          // Focused border
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: AppColor.TextFieldColor,  // Border color when focused
              width: 2,          // Border width when focused
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.red, width: 2),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.95),
          )
      ),
    );
  }
}