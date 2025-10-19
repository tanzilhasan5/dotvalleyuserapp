import 'package:flutter/material.dart';

import 'fristslidder/custom_card.dart';

class FristSlidder extends StatelessWidget {
  const FristSlidder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,

      scrollDirection: Axis.horizontal,
      child:
      Row(
        children: [
          EcommerceCard(
            title: 'Multi Vendor\nEcommerce CMS',
            description: 'the Ultimate PHP Script for  ecommerce',
            logoimages: 'assets/auth_Image/logo.png',
            cardlogoimages: 'assets/CardImage/card1.png',
          ),
          EcommerceCard(
            title: 'Multi Vendor\nEcommerce CMS',
            description: 'the Ultimate PHP Script for  ecommerce',
            logoimages: 'assets/auth_Image/logo.png',
            cardlogoimages: 'assets/CardImage/card1.png',
          ),
          EcommerceCard(
            title: 'Multi Vendor\nEcommerce CMS',
            description: 'the Ultimate PHP Script for  ecommerce',
            logoimages: 'assets/auth_Image/logo.png',
            cardlogoimages: 'assets/CardImage/card1.png',
          ),
          EcommerceCard(
            title: 'Multi Vendor\nEcommerce CMS',
            description: 'the Ultimate PHP Script for  ecommerce',
            logoimages: 'assets/auth_Image/logo.png',
            cardlogoimages: 'assets/CardImage/card1.png',
          ),
        ],
      ),
    );
  }
}