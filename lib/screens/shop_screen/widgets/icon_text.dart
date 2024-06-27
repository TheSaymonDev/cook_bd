import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconText extends StatelessWidget {

  final String title;
  final IconData iconData;
  const IconText({super.key, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return  Wrap(
      spacing: 4.w,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Icon(iconData, size: 16.sp, color: yellowClr),
        Text(title,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: greyClr))
      ],
    );
  }
}
