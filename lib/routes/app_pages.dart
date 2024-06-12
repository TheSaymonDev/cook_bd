import 'package:cook_bd/routes/app_routes.dart';
import 'package:cook_bd/screens/onboarding_screen/onboarding_screen.dart';
import 'package:get/get.dart';

class AppPages{
  static final pages = [
    GetPage(name: AppRoutes.onboardingScreen, page: () => OnboardingScreen())
  ];
}