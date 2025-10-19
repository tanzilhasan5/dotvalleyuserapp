import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/color.dart';

class CatagoryTabBar extends StatefulWidget {
  const CatagoryTabBar({super.key});

  @override
  State<CatagoryTabBar> createState() => _CatagoryTabBarState();
}

class _CatagoryTabBarState extends State<CatagoryTabBar> {
  int selectedIndex = 0; // track which tab is selected

  final List<String> tabs =
  ['Men’s Fashion', 'Kid’s Fashion', 'Health &Beauty', 'Women’sFashion'];
  final List<String> driscription =
  ['Shits, pants\nShoes & more', 'Trendy & comfy\nfor kids', 'Skincare, wellness,\n more', 'Dresses,tops,\naccessories'];
  final List<String> image = [
    'assets/catagoryCard/catagory1.svg',
    'assets/catagoryCard/catagory1.svg',
    'assets/catagoryCard/catagory1.svgg',
    'assets/catagoryCard/catagory1.svg',

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
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
                    SvgPicture.asset(image[index],height: 50,width: 50,),
                    SizedBox(width: 20,
                    ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         tabs[index],
                         style: TextStyle(
                           color: isSelected ? Colors.black87 : Colors.black87,
                           fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                         ),
                       ),
                       Text(
                         driscription[index],
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
      ),
    );
  }
}
