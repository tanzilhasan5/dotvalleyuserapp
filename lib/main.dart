import 'package:dotvalleyuserapp/routs/routs.dart';
import 'package:dotvalleyuserapp/ui/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:Color(0xfffefffe) ,
        primaryColor: AppColor.primaryColors,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: Routs.spalish_Screen,
      getPages: pages,
    );
  }
}

