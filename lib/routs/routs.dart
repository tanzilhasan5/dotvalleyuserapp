
import 'package:dotvalleyuserapp/ui/screen/login_screen.dart';
import 'package:dotvalleyuserapp/ui/screen/mainbuttomScreen.dart';
import 'package:dotvalleyuserapp/ui/screen/register_screen.dart';
import 'package:dotvalleyuserapp/ui/screen/spalish_screen2.dart';
import 'package:dotvalleyuserapp/ui/screen/spalish_screen3.dart';
import 'package:dotvalleyuserapp/ui/screen/spolish_screen1.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routs{
  static String spalish_Screen='/';
  static String spalish_Screen2='/spalish_Screen2';
  static String spalish_Screen3='/spalish_Screen3';
  static String login_Screen='/login_Screen';
  static String signup_Screen='/signup_Screen';
  static String register_Screen='/signup_Screen';
  static String mainButtom_Screen='/mainButtom_Screen';
}
List<GetPage> pages=[
  GetPage(name: Routs.spalish_Screen, page: ()=>SpalishScreen()),
  GetPage(name: Routs.login_Screen, page: ()=>LoginScreen()),
  GetPage(name: Routs.spalish_Screen2, page: ()=>SpalishScreen2()),
  GetPage(name: Routs.spalish_Screen3, page: ()=>SpalishScreen3()),
  GetPage(name: Routs.register_Screen, page: ()=>RegisterScreen()),
  GetPage(name: Routs.mainButtom_Screen, page: ()=>MainButtomNavber()),
];