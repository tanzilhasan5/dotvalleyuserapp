import 'package:dotvalleyuserapp/ui/utils/color.dart';
import 'package:flutter/material.dart';

class FristCard extends StatelessWidget {


  const FristCard({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cardData = [
      {
        'title': 'Multi Vendor\nEcommerce CMS',
        'description': 'the Ultimate PHP Script for  ecommerce',
        'logoimages': 'assets/auth_Image/logo.png',
        'cardlogoimages': 'assets/CardImage/card1.png',

      },
      {
        'title': 'Multi Vendor\nEcommerce CMS',
        'description': 'the Ultimate PHP Script for  ecommerce',
        'logoimages': 'assets/auth_Image/logo.png',
        'cardlogoimages': 'assets/CardImage/card1.png',

      },
      {
        'title': 'Multi Vendor\nEcommerce CMS',
        'description': 'the Ultimate PHP Script for  ecommerce',
        'logoimages': 'assets/auth_Image/logo.png',
        'cardlogoimages': 'assets/CardImage/card1.png',

      },
      {
        'title': 'Multi Vendor\nEcommerce CMS',
        'description': 'the Ultimate PHP Script for  ecommerce',
        'logoimages': 'assets/auth_Image/logo.png',
        'cardlogoimages': 'assets/CardImage/card1.png',

      },
      {
        'title': 'Multi Vendor\nEcommerce CMS',
        'description': 'the Ultimate PHP Script for  ecommerce',
        'logoimages': 'assets/auth_Image/logo.png',
        'cardlogoimages': 'assets/CardImage/card1.png',

      },
      {
        'title': 'Multi Vendor\nEcommerce CMS',
        'description': 'the Ultimate PHP Script for  ecommerce',
        'logoimages': 'assets/auth_Image/logo.png',
        'cardlogoimages': 'assets/CardImage/card1.png',

      },
      {
        'title': 'Multi Vendor\nEcommerce CMS',
        'description': 'the Ultimate PHP Script for  ecommerce',
        'logoimages': 'assets/auth_Image/logo.png',
        'cardlogoimages': 'assets/CardImage/card1.png',

      },
      {
        'title': 'Multi Vendor\nEcommerce CMS',
        'description': 'the Ultimate PHP Script for  ecommerce',
        'logoimages': 'assets/auth_Image/logo.png',
        'cardlogoimages': 'assets/CardImage/card1.png',

      },
    ];

    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: cardData.length,
        itemBuilder: (context,index){
          final item = cardData[index];
          return Card(
            elevation: 4,
            color: Colors.grey.withAlpha(1),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(item['logoimages'].toString(),width: 120,height:30 ),
                          SizedBox(height: 5,),
                          Text(item['title'],style: TextStyle(
                            fontSize: 14.71,fontWeight: FontWeight.w500,color: AppColor.primaryColors,
                          ),),
                          Text(item['description'],style: TextStyle(
                            fontSize: 8.17,fontWeight: FontWeight.w500,color: AppColor.textColor,),),
                          SizedBox(height: 5,),
                          Container(
                            height: 22,
                            width: 60,
                            color: AppColor.primaryColors,
                            child: Center(
                              child: Text('Buy Now',style: TextStyle(

                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),),
                            ),
                          )

                        ],

                      ),
                    ),
                    Image.asset(item['cardlogoimages'].toString(),width: 122,height:110 )
                  ],
                )
            ),
          );


        },

      ),
    );

  }
}
