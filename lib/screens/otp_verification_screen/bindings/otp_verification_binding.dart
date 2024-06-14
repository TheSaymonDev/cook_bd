import 'package:cook_bd/screens/otp_verification_screen/controllers/otp_verification_controller.dart';
import 'package:get/get.dart';

class OtpVerificationBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => OtpVerificationController());
  }
}