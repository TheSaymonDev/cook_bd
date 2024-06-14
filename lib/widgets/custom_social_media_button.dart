import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSocialMediaButton extends StatelessWidget {

  final void Function() onTapped;
  final String imgUrl;
  const CustomSocialMediaButton({super.key, required this.onTapped, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: onTapped,
      borderRadius: BorderRadius.circular(100.r),
      child: Container(
        padding:
        EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        height: 42.h,
        width: 44.w,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: greyClr)),
        child: SvgPicture.asset(imgUrl),
      ),
    );
  }
}
