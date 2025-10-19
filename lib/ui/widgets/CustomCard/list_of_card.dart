import 'package:dotvalleyuserapp/ui/widgets/CustomCard/customCard.dart';
import 'package:flutter/material.dart';

class ListOfCard extends StatelessWidget {
  const ListOfCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomCard(
            leftwidget: Icon(Icons.flash_on ,color: Colors.amber,),
              icon: Icons.favorite_border,
              imagePath: 'assets/CardImage/Frame 180.png',
              title: 'Smart Watch Bluetooth', price:
          '150.0'),
          CustomCard(
              leftwidget: Icon(Icons.flash_on ,color: Colors.amber,),
              icon: Icons.favorite_border,
              imagePath: 'assets/CardImage/Frame 180.png',
              title: 'Smart Watch Bluetooth', price:
          '150.0'),
          CustomCard(
              leftwidget: Icon(Icons.flash_on ,color: Colors.amber,),
              icon: Icons.favorite_border,
              imagePath: 'assets/CardImage/Frame 180.png',
              title: 'Smart Watch Bluetooth', price:
          '150.0'),
          CustomCard(
              leftwidget: Icon(Icons.flash_on ,color: Colors.amber,),
              icon: Icons.favorite_border,
              imagePath: 'assets/CardImage/Frame 180.png',
              title: 'Smart Watch Bluetooth', price:
          '150.0')
        ],
      ),
    );
  }
}
