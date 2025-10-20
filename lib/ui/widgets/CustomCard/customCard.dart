
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../routs/routs.dart';
import '../../utils/color.dart';

class FlashCard extends StatelessWidget {



  const FlashCard({
    super.key,



  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items =[
      {
        'title': 'Smart Watch Bluetooth',
        'price': '\$150.0',
        'imagePath': 'assets/CardImage/Frame 180.png',
        'icon': Icons.favorite_border,
      },
      {
        'title': 'Smart Watch Bluetooth',
        'price': '\$150.0',
        'imagePath': 'assets/CardImage/Frame 180.png',
        'icon': Icons.favorite_border,
      },
      {
        'title': 'Smart Watch Bluetooth',
        'price': '\$150.0',
        'imagePath': 'assets/CardImage/Frame 180.png',
        'icon': Icons.favorite_border,
      },
      {
        'title': 'Smart Watch Bluetooth',
        'price': '\$150.0',
        'imagePath': 'assets/CardImage/Frame 180.png',
        'icon': Icons.favorite_border,
      },
      {
        'title': 'Smart Watch Bluetooth',
        'price': '150.0',
        'imagePath': 'assets/CardImage/Frame 180.png',
        'icon': Icons.favorite_border,
      },
      {
        'title': 'Smart Watch Bluetooth',
        'price': '\$150.0',
        'imagePath': 'assets/CardImage/Frame 180.png',
        'icon': Icons.favorite_border,
      }


    ];

    return  SizedBox(
      height: 224,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: items.length,
        itemBuilder: (context,index){
          final item = items[index];
          return   Padding(
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
                        image: AssetImage(item['imagePath'].toString()),

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
                                  child:Icon(Icons.flash_on,color: Colors.amber,)
                              ),
                              InkWell(
                                  onTap: () {
                                    //Get.toNamed(Routs.wishListtScreen);
                                  },
                                  child:CircleAvatar(
                                    radius: 14,
                                    child:Icon(item['icon'],size: 20,) ,
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
                              item['title'],
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              item['price'],
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

        },

      ),
    );



  }
}

