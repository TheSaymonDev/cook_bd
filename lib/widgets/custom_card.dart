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
    this.height,
    this.width,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius,
    this.cardClr,
    this.border
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: cardClr ?? lightBgClr,
      margin: margin,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 12.0.r),
      ),
      child: Container(
        height: height,
        width: width,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
            color: cardClr ?? lightBgClr,
            borderRadius: BorderRadius.circular(borderRadius ?? 12.0.r),
            border: border
        ),
        child: child,
      ),
    );
  }
}