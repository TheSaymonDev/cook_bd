import 'package:cook_bd/screens/profile_update_screen/controllers/profile_update_controller.dart';
import 'package:get/get.dart';

class ProfileUpdateBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileUpdateController());
  }
}