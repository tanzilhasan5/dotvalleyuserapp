// slide_button_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dotvalleyuserapp/ui/utils/color.dart';
import '../../../../controller/auth_controller.dart';

class SlideButtonPage extends StatelessWidget {
  const SlideButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 10,
              backgroundColor: Color(0xffCFFFE3)),
          SizedBox(width: 3),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primaryColors,
            ),
            onPressed: () {},
            child: Text('1 / 3 ',style: TextStyle(color: Colors.white),),
          ),
          SizedBox(width: 3),
          CircleAvatar(
            radius: 10,
              backgroundColor: Color(0xffCFFFE3)),
        ],
      ),
    );
  }
}
