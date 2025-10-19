import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/color.dart';
class Custom_search_Ber extends StatelessWidget {
  const Custom_search_Ber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
        child: Row(
          children: [
            Container(
              height: 40,
              width: 200,
              child:
              TextFormField(
                decoration: InputDecoration(
                 suffixIcon: InkWell( onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration:
                        BoxDecoration(
                            color:AppColor.primaryColors,
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(4) )
                        ),
                        child: Icon(Icons.search,size: 30,color: Colors.grey,),
                      ),
                    ),
                  ),
                  labelText: 'Search product....',labelStyle: TextStyle(
                  color: AppColor.textColor,
                  fontWeight: FontWeight.w500,fontSize: 10
                ),
                  focusColor: AppColor.TextFieldColor,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: AppColor.textColor, width:2),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.95),
                    borderSide: BorderSide(color:AppColor.TextFieldColor, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: AppColor.TextFieldColor,  // Border color when not focused
                      width: 2,          // Border width when not focused
                    ),),

                ),
              ),
            ),
          ],
        ),
      );
  }
}