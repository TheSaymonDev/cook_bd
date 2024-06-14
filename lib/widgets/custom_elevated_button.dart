import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final double width;
  final double height;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.name,
    this.width = double.infinity,
    this.height = 55.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: yellowClr,
            foregroundColor: lightBgClr,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.r)),
            padding: EdgeInsets.zero),
        onPressed: onPressed,
        child: Text(name, style: Get.textTheme.titleMedium!.copyWith(color: lightBgClr)),
      ),
    );
  }
}
