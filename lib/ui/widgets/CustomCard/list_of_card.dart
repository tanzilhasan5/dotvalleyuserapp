import 'package:dotvalleyuserapp/ui/widgets/CustomCard/customCard.dart';
import 'package:flutter/material.dart';

class ListOfCard extends StatelessWidget {
  const ListOfCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items =[
      {
        'title': 'Smart Watch Bluetooth',
        'price': '150.0',
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
        'price': '150.0',
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
        'price': '150.0',
        'imagePath': 'assets/CardImage/Frame 180.png',
        'icon': Icons.favorite_border,
      },
      {
        'title': 'Smart Watch Bluetooth',
        'price': '150.0',
        'imagePath': 'assets/CardImage/Frame 180.png',
        'icon': Icons.favorite_border,
      }


    ];
    return SizedBox(
      height: 225,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

          itemCount: items.length,
          itemBuilder: (context,index){
            final item = items[index];
            return
              CustomCard(
                  imagePath: item['imagePath'],
                  title: item['title'],
                  price: item['price'],
                  icon: item['icon'],
                  leftwidget: Icon(Icons.flash_on ,color: Colors.amber,),

              );

      },

      ),
    );
      /*SingleChildScrollView(

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
    );*/
  }
}
