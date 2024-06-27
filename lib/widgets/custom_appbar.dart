import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final void Function() onPressed;
  final String title;
  final List<Widget>? actions;
  const CustomAppBar({super.key, required this.onPressed, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_back, size: 25.sp, color: lightFontClr)),
      title: Text(title,  style: Get.textTheme.titleMedium),
      actions: actions,
      toolbarHeight: preferredSize.height
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}