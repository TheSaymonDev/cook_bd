import 'package:get/get.dart';

class SignUpController extends GetxController{
  bool isObscure = true;
  bool isAgree = false;

  void toggleObscure() {
    isObscure = !isObscure;
    update();
  }

  void toggleIsAgree(newValue) {
    isAgree = newValue;
    update();
  }
}