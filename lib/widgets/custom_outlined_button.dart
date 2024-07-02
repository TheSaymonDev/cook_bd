import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final double? width;
  final double? height;

  const CustomOutlinedButton({
    super.key,
    required this.onPressed,
    required this.name,
    this.width,
    this.height
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity.w,
      height: height ?? 55.h,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: lightBgClr,
            foregroundColor: lightFontClr,
            side: const BorderSide(color: greyClr),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.r)),
            padding: EdgeInsets.zero),
        onPressed: onPressed,
        child: Text(name, style: Get.textTheme.titleMedium),
      ),
    );
  }
}
