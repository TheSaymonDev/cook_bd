import 'package:cook_bd/screens/set_password_screen/controllers/set_password_controller.dart';
import 'package:get/get.dart';

class SetPasswordBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => SetPasswordController());
  }
}