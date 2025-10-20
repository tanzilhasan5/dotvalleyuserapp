import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/color.dart';

class CatagoryTabBar extends StatefulWidget {
  const CatagoryTabBar({super.key});

  @override
  State<CatagoryTabBar> createState() => _CatagoryTabBarState();
}

class _CatagoryTabBarState extends State<CatagoryTabBar> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> tabs = [
    {
      'title': 'Men’s Fashion',
      'description': 'Shits, pants\nShoes & more',
      'image': 'assets/CardImage/card1.png'
    },
    {
      'title': 'Men’s Fashion',
      'description': 'Shits, pants\nShoes & more',
      'image': 'assets/CardImage/card1.png'
    },
    {
      'title': 'Men’s Fashion',
      'description': 'Shits, pants\nShoes & more',
      'image': 'assets/CardImage/card1.png'
    },
    {
      'title': 'Men’s Fashion',
      'description': 'Shits, pants\nShoes & more',
      'image': 'assets/CardImage/card1.png'
    },
    {
      'title': 'Men’s Fashion',
      'description': 'Shits, pants\nShoes & more',
      'image': 'assets/CardImage/card1.png'
    },
    {
      'title': 'Men’s Fashion',
      'description': 'Shits, pants\nShoes & more',
      'image': 'assets/CardImage/card1.png'
    },
  ];// track which tab is selected


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 60,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            final Tabs=tabs[index];
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(tabs.length, (index) {
                final isSelected = index == selectedIndex;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      }) ;},

                    child: Container(
                      decoration: BoxDecoration(
                        color:  isSelected
                            ? Colors.white70
                            : Color(0xffFDF1F1),
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Row(
                        children: [
                          Image.asset(
                              Tabs['image'],
                            height: 60,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Tabs['title'],
                                style: TextStyle(
                                  color: isSelected ? Colors.black87 : Colors.black87,
                                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                                ),
                              ),
                              Text(
                                Tabs['description'],
                                style: TextStyle(
                                  color: isSelected ? AppColor.textColor : AppColor.textColor,
                                  fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: 10) ,
          itemCount: tabs.length
      ),
    );

  }
}
