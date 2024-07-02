import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomOutlinedIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String name;
  final double? width;
  final double? height;
  final IconData iconData;
  final Color color;

  const CustomOutlinedIconButton({
    super.key,
    required this.onPressed,
    required this.name,
    this.width,
    this.height,
    required this.iconData,
    this.color = lightFontClr
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity.w,
      height: height ?? 55.h,
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
            backgroundColor: lightBgClr,
            foregroundColor: color,
            side:  BorderSide(color: color),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.r)),
            padding: EdgeInsets.zero),
        onPressed: onPressed,
        label: Text(name, style: Get.textTheme.titleSmall!.copyWith(color: color)),
        icon: Icon(iconData, size: 16.sp),
      ),
    );
  }
}
