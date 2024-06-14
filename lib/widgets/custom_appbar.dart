import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.onPressedBack,
    required this.title,
  });

  final void Function() onPressedBack;
  final String title;

  @override
  Size get preferredSize => Size.fromHeight(60.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(onPressed: onPressedBack, icon: FaIcon(FontAwesomeIcons.circleChevronLeft, size: 25.sp,)),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium), // Use null if title is not provided
      toolbarHeight: preferredSize.height,
    );
  }
}
