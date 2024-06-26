import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final void Function() onPressed;
  final String title;
  const CustomAppBar({super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_back, size: 25.sp, color: lightBgClr)),
      title: Text(title,  style: Get.textTheme.titleMedium!.copyWith(color: lightBgClr)),
      toolbarHeight: preferredSize.height,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}