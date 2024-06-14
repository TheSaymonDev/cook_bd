import 'package:get/get.dart';

class IdentityVerificationController extends GetxController{
  int selectedIndex = 0;

  void chooseOption(int index){
    selectedIndex = index;
    update();
  }
}