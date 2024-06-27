import 'package:cook_bd/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SetPackageScreen extends StatelessWidget {
  const SetPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String title = Get.arguments.toString();
    return Scaffold(
      appBar: CustomAppBar(onPressed: (){
        Get.back();
      }, title: 'Set $title Package'),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
