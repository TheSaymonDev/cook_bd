import 'package:cook_bd/routes/app_routes.dart';
import 'package:cook_bd/screens/package_screen/models/package_model.dart';
import 'package:cook_bd/screens/package_screen/widgets/package_card.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/widgets/custom_card.dart';
import 'package:cook_bd/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class PackageScreen extends StatelessWidget {
  PackageScreen({super.key});

  final List<PackageModel> _package = [
    PackageModel(item: 'Vat', quantity: '1 Plate'),
    PackageModel(item: 'Vaji', quantity: '4 items+'),
    PackageModel(item: 'Torkari', quantity: '2 items'),
    PackageModel(item: 'Fish', quantity: '1 item'),
    PackageModel(item: 'Meat', quantity: '5 items+'),
    PackageModel(item: 'Dim', quantity: '1 items'),
    PackageModel(item: 'Drinks', quantity: '5 items+'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Gap(16.h),
              PackageCard(title: 'Lunch', packageItems: _package),
              Gap(8.h),
              CustomElevatedButton(onPressed: () {
                Get.toNamed(AppRoutes.setPackageScreen, arguments: 'Lunch');
              }, name: 'Buy Package'),
              Gap(20.h),
              PackageCard(title: 'Dinner', packageItems: _package),
              Gap(8.h),
              CustomElevatedButton(onPressed: () {
                Get.toNamed(AppRoutes.setPackageScreen, arguments: 'Dinner');
              }, name: 'Buy Package'),
              Gap(20.h),
              PackageCard(title: 'Lunch+Dinner', packageItems: _package),
              Gap(8.h),
              CustomElevatedButton(onPressed: () {
                Get.toNamed(AppRoutes.setPackageScreen, arguments: 'Lunch+Dinner');
              }, name: 'Buy Package'),
              Gap(16.h)
            ],
          ),
        ),
      ),
    );
  }
}
