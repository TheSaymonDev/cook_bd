import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomChooseItemButton extends StatelessWidget {

  final void Function() onTap;
  final String title;
  const CustomChooseItemButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
            color: lightBgClr,
            border: Border.all(color: yellowClr),
            borderRadius: BorderRadius.circular(8.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            Icon(Icons.arrow_circle_down, size: 20.sp, color: yellowClr)
          ],
        ),
      ),
    );
  }
}
