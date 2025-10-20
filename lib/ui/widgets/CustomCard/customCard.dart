
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../routs/routs.dart';
import '../../utils/color.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String title;

  final String price;
  final IconData icon;
  final Widget? leftwidget;



  const CustomCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.icon,
    this.leftwidget,


  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          InkWell(
            onTap: () {},
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              width: 150,
              height: 203,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imagePath.toString()),

                ),
              ),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              //Get.toNamed(Routs.wishListtScreen);
                            },
                            child:leftwidget
                        ),
                        InkWell(
                            onTap: () {
                              //Get.toNamed(Routs.wishListtScreen);
                            },
                            child:CircleAvatar(
                              radius: 14,
                              child:Icon(icon,size: 20,) ,
                            )
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$$price',
                        style:  TextStyle(
                          color: AppColor.primaryColors,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

