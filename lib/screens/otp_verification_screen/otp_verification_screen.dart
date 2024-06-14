import 'package:cook_bd/routes/app_routes.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/utils/app_const_functions.dart';
import 'package:cook_bd/widgets/custom_appbar.dart';
import 'package:cook_bd/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({super.key});

  final _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(onPressedBack: () {}, title: 'otpTitle'.tr),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(180.h),
              Text('otpTitle'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 32.sp)),
              Gap(24.h),
              Text('otpSubTitle'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: greyClr)),
              Gap(24.h),
              PinCodeTextField(
                controller: _otpController,
                appContext: context,
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                animationDuration: const Duration(milliseconds: 300),
                pinTheme: pinTheme(),
                keyboardType: TextInputType.phone,
              ),
              _buildResendCodeRow(context),
              _buildTimerRow(context),
              Gap(16.h),
              CustomElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.setPasswordScreen);
                  },
                  name: 'continue'.tr)
            ],
          ),
        ),
      ),
    );
  }

  Row _buildResendCodeRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('receiveCode'.tr, style: Theme.of(context).textTheme.bodyMedium),
        TextButton(
            onPressed: () {},
            child: Text('resend'.tr,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: yellowClr)))
      ],
    );
  }

  Row _buildTimerRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          FontAwesomeIcons.clock,
          color: greyClr,
          size: 18.sp,
        ),
        Gap(16.w),
        Text('02:30',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: greyClr))
      ],
    );
  }
}
