import 'package:dotvalleyuserapp/ui/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../routs/routs.dart';
import 'package:get/get.dart';

class SpalishScreen2 extends StatefulWidget {
  const SpalishScreen2({super.key});

  @override
  State<SpalishScreen2> createState() => _SpalishScreen2State();
}

class _SpalishScreen2State extends State<SpalishScreen2> {
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
                      child:
                      InkWell(
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
                SizedBox(height: 180),
                Center(child: SvgPicture.asset('assets/auth_Image/spalish2.svg')),
                SizedBox(height: 10),
                Expanded(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          //Get.toNamed(page)
                        },
                        child: Text(
                          'Easy and Secure Checkout',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColor.primaryColors,
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        textAlign: TextAlign.center,
                        'Enjoy safer & faster payments. We offer world famous four payment gateway for smooth and safe payment for your purchase.',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColor.primaryColors,
                        ),
                      ),
                      SizedBox(height: 32),
                      IconButton(onPressed: (){
                        Get.toNamed(Routs.spalish_Screen3);
                      }, icon: SvgPicture.asset(
                        'assets/auth_Image/circlearrow.svg',
                      ),),
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
