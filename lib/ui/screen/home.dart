import 'package:dotvalleyuserapp/ui/utils/color.dart';
import 'package:dotvalleyuserapp/ui/widgets/CustomCard/list_of_card.dart';
import 'package:dotvalleyuserapp/ui/widgets/CustomHomeWidgets/catagorySlidder/catagoryslidder.dart';
import 'package:dotvalleyuserapp/ui/widgets/CustomHomeWidgets/fristslidder/card_slidder_button.dart';
import 'package:dotvalleyuserapp/ui/widgets/CustomHomeWidgets/custom_Search_Ber.dart';
import 'package:dotvalleyuserapp/ui/widgets/CustomHomeWidgets/fristslidder/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../widgets/CustomHomeWidgets/frist Card.dart';
import '../widgets/countDown/countdown.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/auth_Image/logo.png', width: 120, height: 60),
                    Custom_search_Ber(),
                  ],
                ),
                SizedBox(height: 10,),
                Column(
                  children: [
                    FristSlidder(),
                    Center(child: SlideButtonPage())
                  ],
                ),
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Categories',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
                    Row(
                      children: [
                        Text('View All',style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                            color: AppColor.primaryColors

                        )),
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right_alt_outlined,color: AppColor.primaryColors,))
                      ],
                    )
                  ],
                ),
                CatagoryTabBar(),
                SizedBox(height: 10,),
                CountDown(),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('Hurry Up ! The offer is limited. Grab while it lasts',style: TextStyle(color: AppColor.primaryColors,fontSize: 10),)
                      ],
                    ),
                    ListOfCard(),
                  ],
                ),
                ListOfCard(),
                ListOfCard(),
                ListOfCard(),
                ListOfCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}





