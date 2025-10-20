import 'package:flutter/material.dart';

import '../../CustomCard/customCard.dart';
import 'custom_card.dart';

class FristSlidder extends StatelessWidget {
  const FristSlidder({
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
    return
      SizedBox(
        height: 155,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,

            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: cardData.length,
            itemBuilder: (context,index){
              final  carddata = cardData[index];

              return  EcommerceCard(
                  title: carddata['title'],
                  description: carddata['description'],
                  logoimages: carddata['logoimages'],
                  cardlogoimages: carddata['cardlogoimages'],
                  );
            }

            ),
      );

  }
}