import 'package:country_code_picker_plus/country_code_picker_plus.dart';
import 'package:dotvalleyuserapp/ui/utils/color.dart';
import 'package:dotvalleyuserapp/ui/widgets/CustomAuthWidgets/customButton.dart';
import 'package:dotvalleyuserapp/ui/widgets/CustomAuthWidgets/customChackbox.dart';
import 'package:dotvalleyuserapp/ui/widgets/CustomAuthWidgets/custom_password%20TextField.dart';
import 'package:dotvalleyuserapp/ui/widgets/CustomAuthWidgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  final TextEditingController _fristNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _ReferralController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColors,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned.fill(
                    child: SvgPicture.asset(
                      'assets/auth_Image/regBG.svg',
                      fit: BoxFit.cover, // same as DecorationImage fit
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 108,
                      width: 393,
                      padding: EdgeInsets.all(16),
                      color: AppColor.primaryColors.withOpacity(0.8),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/auth_Image/reg.png'),
                            height: 55,
                            width: 190,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  color: Color(0xffFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Full Name', style: AppTextStyle.BigText),
                      SizedBox(height: 10),
                      CustomTextField(
                        hintText: 'Your Full Name',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                        },
                      ),
                      Text('Your email', style: AppTextStyle.BigText),
                      SizedBox(height: 10),
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
                        controller: _emailController,
                      ),
                      SizedBox(height: 10),
                      Text('Phone Number', style: AppTextStyle.BigText),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 80,
                            color: Color(0xffECF0F1),
                            child: CountryCodePicker(
                              mode: CountryCodePickerMode.dialog,
                              onChanged: (country) {
                                print('Country code selected: ${country.code}');
                              },
                              initialSelection: 'US',
                              showFlag: false,
                              showDropDownButton: true,
                              icon: Icon(Icons.keyboard_arrow_down_outlined),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 50,
                              child: CustomTextField(
                                hintText: 'Enter Your Phone ',
                                controller: _numberController,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text('Password', style: AppTextStyle.BigText),
                      SizedBox(height: 10),
                      CustomPasswordTextField(
                        validatorType: ValidatorType.changePassword,
                        lable: '',
                        hint: '8+Characters required',
                        controller: _passWordController,
                      ),
                      SizedBox(height: 10),
                      Text('Confirm Password', style: AppTextStyle.BigText),
                      SizedBox(height: 10),
                      CustomPasswordTextField(
                        lable: '',
                        hint: '8+Characters required',
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Referral Code (Optional)',
                        style: AppTextStyle.BigText,
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        labelText: 'Enter Referra Code',
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          CustomChackBox(
                            label: 'I agree with the',
                            textColor: AppColor.textColor,
                          ),
                          Text(
                            'Terms & Conditions',
                            style: TextStyle(color: AppColor.primaryColors),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      CustomButton(
                        customColor: AppColor.primaryColors,
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onpress: () {
                          if (_formKey.currentState!.validate()) {
                            return null;
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
