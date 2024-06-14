import 'package:cook_bd/screens/set_password_screen/controllers/set_password_controller.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/widgets/custom_appbar.dart';
import 'package:cook_bd/widgets/custom_elevated_button.dart';
import 'package:cook_bd/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(onPressedBack: (){}, title: 'setPasswordTitle'.tr),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(150.h),
              Text('setPasswordTitle'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 32.sp)),
              Gap(24.h),
              Text('setPasswordSubTitle'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: greyClr)),
              Gap(24.h),
              Text('setPasswordOldPassLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              GetBuilder<SetPasswordController>(
                builder: (controller) {
                  return CustomTextFormField(
                      hintText: 'setPasswordOldPassHint'.tr,
                      controller: _oldPasswordController,
                      obscureText: controller.isObscureOld,
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.toggleObscureOld();
                          },
                          icon: Icon(
                              controller.isObscureOld
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: greyClr,
                              size: 20.sp)));
                },
              ),
              Gap(16.h),
              Text('setPasswordNewPassLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              GetBuilder<SetPasswordController>(
                builder: (controller) {
                  return CustomTextFormField(
                      hintText: 'setPasswordNewPassHint'.tr,
                      controller: _newPasswordController,
                      obscureText: controller.isObscureNew,
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.toggleObscureNew();
                          },
                          icon: Icon(
                              controller.isObscureNew
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: greyClr,
                              size: 20.sp)));
                },
              ),
              Gap(16.h),
              Text('setPasswordConPassLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              GetBuilder<SetPasswordController>(
                builder: (controller) {
                  return CustomTextFormField(
                      hintText: 'setPasswordConPassHint'.tr,
                      controller: _confirmPasswordController,
                      obscureText: controller.isObscureCon,
                      suffixIcon: IconButton(
                          onPressed: () {
                            controller.toggleObscureCon();
                          },
                          icon: Icon(
                              controller.isObscureCon
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: greyClr,
                              size: 20.sp)));
                },
              ),
              Gap(32.h),
              CustomElevatedButton(onPressed: () {}, name: 'changePass'.tr)
            ],
          ),
        ),
      ),
    );
  }
}
