import 'package:dotvalleyuserapp/controller/auth_controller.dart';
import 'package:dotvalleyuserapp/ui/utils/color.dart';
import 'package:dotvalleyuserapp/ui/widgets/CustomAuthWidgets/customButton.dart';
import 'package:dotvalleyuserapp/ui/widgets/CustomAuthWidgets/customChackbox.dart';
import 'package:dotvalleyuserapp/ui/widgets/CustomAuthWidgets/customReachText.dart';
import 'package:dotvalleyuserapp/ui/widgets/CustomAuthWidgets/custom_password%20TextField.dart';
import 'package:dotvalleyuserapp/ui/widgets/CustomAuthWidgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../routs/routs.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController passwordCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 76),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage('assets/auth_Image/logo.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      ' Email\$ Phone',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
          
                CustomTextField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email cannot be empty';
                    } else if (!value.contains('@')) {
                      return 'Email must contain @';
                    } else if (!value.contains('gmail')) {
                      return 'Email must contain gmail (gmail)';
                    } else if (!value.contains('.')) {
                      return 'Email must contain . (dot)';
                    } else if (!value.contains('com')) {
                      return 'Email must contain com (com)';
                    } else {
                      return null;
                    }
                  },
                  hintText: 'emaill@address,com',
                  controller: emailCtrl,
                ),
                SizedBox(height: 20),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
          
                CustomPasswordTextField(
                  lable: '',
                  hint: '8+Characters required',
                  controller: passwordCtrl,
                  validatorType: ValidatorType.login,
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    CustomChackBox(),
                    Spacer(),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: AppColor.primaryColors),
                    ),
                  ],
                ),
                SizedBox(height: 10),
          
                Row(
                  children: [
                    Flexible(child: Divider(thickness: 1)),
                    SizedBox(width: 3),
                    Text(
                      'Or',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 3),
                    Expanded(child: Divider(thickness: 1)),
                  ],
                ),
                SizedBox(height: 10),
                CustomButton(
                  customColor: Colors.white,
                  onpress: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset('assets/auth_Image/gmail.svg'),
          
                      Text(
                        'Continue with Gmail',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                CustomButton(
                  customColor: Colors.white,
                  onpress: () {},
                  borderSide: BorderSide(width: 0, color: Colors.grey),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset('assets/auth_Image/facebook..svg'),
          
                      Text(
                        'Continue with Facbook',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
          
                CustomButton(
                  customColor: AppColor.primaryColors,
                  child: Text(
                    'Login ',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onpress: () {
                    if (_formKey.currentState!.validate()) {
                      Get.toNamed(Routs.mainButtom_Screen);
                    }
                  },
                ),
                SizedBox(height: 16),
                CustomReachText(
                  context: context,
                  text: 'Don’t Have an Account? ',
                  title: ' Register',
                  ontap: () {
                    Get.toNamed(Routs.register_Screen);
                  },
                ),
                SizedBox(height: 16),
                CustomReachText(
                  context: context,
                  text: 'Continue as  Guest ',
                  title: ' Guest',
                  ontap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailCtrl.dispose();
    passwordCtrl.dispose();
    super.dispose();
  }
}
