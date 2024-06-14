import 'package:get/get.dart';

class SetPasswordController extends GetxController{
  bool isObscureOld = true;
  bool isObscureNew = true;
  bool isObscureCon = true;

  void toggleObscureOld() {
    isObscureOld = !isObscureOld;
    update();
  }

  void toggleObscureNew() {
    isObscureNew = !isObscureNew;
    update();
  }

  void toggleObscureCon() {
    isObscureCon = !isObscureCon;
    update();
  }
}