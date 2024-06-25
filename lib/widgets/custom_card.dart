import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {

  final double? height;
  final double? width;
  final double? borderRadius;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? cardClr;
  final BoxBorder? border;

  const CustomCard({
    super.key,
    this.height = double.infinity,
    this.width = double.infinity,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius = 12.0,
    this.cardClr = lightBgClr,
    this.border
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardClr,
      margin: margin,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius!.r),
      ),
      child: Container(
        height: height!.h,
        width: width!.w,
        padding: padding,
        decoration: BoxDecoration(
            color: cardClr,
            borderRadius: BorderRadius.circular(borderRadius!.r),
            border: border
        ),
        child: child,
      ),
    );
  }
}