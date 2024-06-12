import 'package:cook_bd/localizations/language_controller.dart';
import 'package:cook_bd/themes/theme_controller.dart';
import 'package:get/get.dart';

class AppInitialBindings implements Bindings{
  @override
  void dependencies() {
   Get.put(LanguageController());
   Get.put(ThemeController());
  }
}