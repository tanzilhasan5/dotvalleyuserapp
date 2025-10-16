import 'package:dotvalleyuserapp/ui/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../routs/routs.dart';
import 'package:get/get.dart';

class SpalishScreen3 extends StatefulWidget {
  const SpalishScreen3({super.key});

  @override
  State<SpalishScreen3> createState() => _SpalishScreen3State();
}

class _SpalishScreen3State extends State<SpalishScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: (){Get.toNamed(Routs.login_Screen);},
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            color: AppColor.primaryColors,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 102),
                Column(
                  children: [
                    Text('Welcome Back!', style: TextStyle(fontSize: 28)),
                    Text('Let’s get you signed in securely.',style: TextStyle(fontSize: 12,color:AppColor.textColor),)
                  ],
                ),
                Center(
                  child: SvgPicture.asset('assets/auth_Image/spolish3.svg'),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          //Get.toNamed(page)
                        },
                        child: Text(
                          'Fastest Delivery',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColor.primaryColors,
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        textAlign: TextAlign.center,
                        'Thousand of seller are waiting for your order, place an order, get fast delivery and enjoy your daily life.',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColor.primaryColors,
                        ),
                      ),
                      SizedBox(height: 32),
                      ElevatedButton(style:ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffE9F8EF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                          onPressed: () {
                        Get.toNamed(Routs.login_Screen);
                          }, child: Text('Explore',)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
