import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ProfileClickableItem extends StatelessWidget {

  final IconData iconData;
  final String title;
  final void Function() onTap;
  const ProfileClickableItem({super.key, required this.iconData, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            height: 40.h,
            width: 35.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: greyClr.withOpacity(0.3),
              borderRadius: BorderRadius.circular(6.r)
            ),
            child: Icon(iconData, size: 25.sp),
          ),
          Gap(32.w),
          Text(title.tr, style: Theme.of(context).textTheme.titleMedium),
          const Spacer(),
          Icon(Icons.arrow_forward_ios, size: 20.sp)
        ],
      ),
    );
  }
}
