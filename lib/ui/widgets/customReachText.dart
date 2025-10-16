import 'package:dotvalleyuserapp/ui/utils/color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomReachText extends StatelessWidget {
  const CustomReachText({
    super.key,
    required this.context,
    required this.text,
    required this.title,
    required this.ontap,
  });

  final BuildContext context;
  final String text;
  final String title;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: text,
          style:
           TextStyle(color:AppColor.textColor, fontSize: 16,fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: title,
              style: TextStyle(
                  color: AppColor.primaryColors
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = ontap,
            )
          ],
        ),
      ),
    );
  }
}
