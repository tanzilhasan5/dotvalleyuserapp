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
      elevation: 8,
      shadowColor: Colors.blue.withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(logoimages.toString(),width: 120,height:60 ),
                SizedBox(height: 4,),
                Text(title,style: TextStyle(
                  fontSize: 14.71,fontWeight: FontWeight.w500,color: AppColor.primaryColors,
                ),),
                SizedBox(height: 4,),
                Text(description,style: TextStyle(
                  fontSize: 8.17,fontWeight: FontWeight.w500,color: AppColor.textColor,),),
                SizedBox(height: 8,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    backgroundColor: AppColor.primaryColors
                  ),
                    onPressed: (){}, child: Text('Buy Now!',style: TextStyle(color: Colors.white,),),)

              ],

            ),
            Image.asset(cardlogoimages.toString())
          ],
        )
      ),
    );
  }
}
