import 'package:get/get.dart';

class PasswordController extends GetxController {
  RxBool isHidden = true.obs;

  void togglePassword() {
    isHidden.value = !isHidden.value;
  }
}
class RememberMeController extends GetxController {
  RxBool isRemembered = false.obs;

  void toggleRemember() {
    isRemembered.value = !isRemembered.value;
  }
}