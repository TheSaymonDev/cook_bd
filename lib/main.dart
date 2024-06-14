import 'package:cook_bd/localizations/app_localization.dart';
import 'package:cook_bd/routes/app_pages.dart';
import 'package:cook_bd/routes/app_routes.dart';
import 'package:cook_bd/services/shared_preference_service.dart';
import 'package:cook_bd/themes/app_theme.dart';
import 'package:cook_bd/utils/app_initial_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesService().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(430, 930),
      builder: (_, child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: AppLocalization(),
          fallbackLocale: const Locale('en', 'US'),
          initialRoute: AppRoutes.onboardingScreen,
          getPages: AppPages.pages,
          initialBinding: AppInitialBindings(),
          theme: lightTheme,
          darkTheme: darkTheme),
    );
  }
}
