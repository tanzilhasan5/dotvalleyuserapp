import 'package:dotvalleyuserapp/ui/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../routs/routs.dart';
import 'package:get/get.dart';

class SpalishScreen extends StatefulWidget {
  const SpalishScreen({super.key});

  @override
  State<SpalishScreen> createState() => _SpalishScreenState();
}

class _SpalishScreenState extends State<SpalishScreen> {
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:  20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                  ],
                ),
              ),
              SizedBox(height: 187),
              Center(
                child: SvgPicture.asset('assets/auth_Image/spalish1.svg')
                  
                //Image(image: AssetImage('assets/auth_Image/image (23) 1.jpg'),),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Welcome to Dotvalley',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColor.primaryColors,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Here shopping is easy and fun with 50 thousands \n products, exclusive deals, offers and promotions.',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColor.primaryColors,
                      ),
                    ),
                    SizedBox(height: 32),
                    IconButton(onPressed: (){Get.toNamed(Routs.spalish_Screen2);}, icon: SvgPicture.asset(
                      'assets/auth_Image/circlearrow.svg',
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
