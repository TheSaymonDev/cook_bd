import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
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

String formatDate(String dobString) {
  try {
    final date = DateTime.parse(dobString);
    final formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(date);
  } catch (error) {
    // Handle parsing error (optional)
    return dobString; // Or return a default value
  }
}
