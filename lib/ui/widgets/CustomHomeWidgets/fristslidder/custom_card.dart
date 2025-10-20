import 'package:dotvalleyuserapp/ui/utils/color.dart';
import 'package:flutter/material.dart';

class EcommerceCard extends StatelessWidget {
  final String title;
  final String description;
  final String logoimages;
  final String cardlogoimages;

  const EcommerceCard({
    super.key,
    required this.title,
    required this.description,
    required this.logoimages,
    required this.cardlogoimages,
  });

  @override
  Widget build(BuildContext context) {
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
                  Image.asset(logoimages.toString(),width: 120,height:30 ),
                  SizedBox(height: 5,),
                  Text(title,style: TextStyle(
                    fontSize: 14.71,fontWeight: FontWeight.w500,color: AppColor.primaryColors,
                  ),),
                  Text(description,style: TextStyle(
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
            Image.asset(cardlogoimages.toString(),width: 122,height:110 )
          ],
        )
      ),
    );
  }
}
