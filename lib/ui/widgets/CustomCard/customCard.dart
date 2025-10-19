
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
      child: Row(
        children: [
          InkWell(
            onTap: (){},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 203,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(imagePath.toString()),

                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 140, right: 14),
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
                ),
                const SizedBox(width: 10,),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$$price',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

