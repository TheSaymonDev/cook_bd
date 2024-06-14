import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

PinTheme pinTheme() {
  return PinTheme(
      shape: PinCodeFieldShape.box,
      borderRadius: BorderRadius.circular(12.r),
     // borderWidth: 0.5.w,
      inactiveFillColor: lightBgClr,
      selectedFillColor: lightBgClr,
      fieldHeight: 54.h,
      fieldWidth: 52.w,
      activeColor: greyClr,
      selectedColor: yellowClr,
      inactiveColor: greyClr);
}