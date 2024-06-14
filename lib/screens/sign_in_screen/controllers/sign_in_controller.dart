import 'package:get/get.dart';

class SignInController extends GetxController{
  bool isObscure = true;
  bool isKeepMe = false;

  void toggleObscure() {
    isObscure = !isObscure;
    update();
  }

  void toggleIsKeepMe(newValue) {
    isKeepMe = newValue;
    update();
  }
}