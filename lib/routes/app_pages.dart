import 'package:cook_bd/routes/app_routes.dart';
import 'package:cook_bd/screens/home_screen/home_screen.dart';
import 'package:cook_bd/screens/identity_verification_screen/bindings/identity_verification_binding.dart';
import 'package:cook_bd/screens/identity_verification_screen/identity_verification_screen.dart';
import 'package:cook_bd/screens/onboarding_screen/onboarding_screen.dart';
import 'package:cook_bd/screens/otp_verification_screen/otp_verification_screen.dart';
import 'package:cook_bd/screens/set_password_screen/bindings/set_password_binding.dart';
import 'package:cook_bd/screens/set_password_screen/set_password_screen.dart';
import 'package:cook_bd/screens/sign_in_screen/bindings/sign_in_binding.dart';
import 'package:cook_bd/screens/sign_in_screen/sign_in_screen.dart';
import 'package:cook_bd/screens/sign_up_screen/bindings/sign_up_binding.dart';
import 'package:cook_bd/screens/sign_up_screen/sign_up_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.onboardingScreen, page: () => OnboardingScreen()),
    GetPage(
        name: AppRoutes.signInScreen,
        page: () => SignInScreen(),
        binding: SignInBinding()),
    GetPage(
        name: AppRoutes.signUpScreen,
        page: () => SignUpScreen(),
        binding: SignUpBinding()),
    GetPage(
        name: AppRoutes.identityVerificationScreen,
        page: () => IdentityVerificationScreen(),
        binding: IdentityVerificationBinding()),
    GetPage(
      name: AppRoutes.otpVerificationScreen,
      page: () => OtpVerificationScreen(),
    ),
    GetPage(
      name: AppRoutes.setPasswordScreen,
      page: () => SetPasswordScreen(),
      binding: SetPasswordBinding()
    ),
    GetPage(
      name: AppRoutes.homeScreen,
      page: () => HomeScreen(),
    )
  ];
}
