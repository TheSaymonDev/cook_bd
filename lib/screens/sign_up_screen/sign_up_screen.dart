import 'package:cook_bd/screens/sign_up_screen/controllers/sign_up_controller.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/utils/app_urls.dart';
import 'package:cook_bd/widgets/custom_appbar.dart';
import 'package:cook_bd/widgets/custom_elevated_button.dart';
import 'package:cook_bd/widgets/custom_social_media_button.dart';
import 'package:cook_bd/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onPressed: (){}, title: 'signUp'.tr),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(40.h),
              Text('signUpTitle'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 32.sp)),
              Gap(16.h),
              Text('signUpSubTitle'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: greyClr)),
              Gap(16.h),
              Text('signUpFirstNameLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              CustomTextFormField(
                  hintText: 'signUpFirstNameHint'.tr,
                  controller: _firstNameController),
              Gap(16.h),
              Text('signUpLastNameLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              CustomTextFormField(
                  hintText: 'signUpLastNameHint'.tr,
                  controller: _lastNameController),
              Gap(16.h),
              Text('signUpMobileLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              CustomTextFormField(
                  hintText: 'signUpMobileHint'.tr,
                  controller: _mobileController, keyBoardType: TextInputType.phone),
              Gap(16.h),
              Text('signUpEmailLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              CustomTextFormField(
                  hintText: 'signUpEmailHint'.tr, controller: _emailController),
              Gap(16.h),
              Text('signUpPasswordLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              GetBuilder<SignUpController>(builder: (controller) {
                return CustomTextFormField(
                    hintText: 'signUpPasswordHint'.tr,
                    controller: _passwordController,
                    obscureText: controller.isObscure,
                    suffixIcon: IconButton(
                        onPressed: () {
                          controller.toggleObscure();
                        },
                        icon: Icon(
                            controller.isObscure
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: greyClr,
                            size: 20.sp)));
              }),
              Gap(8.h),
              _buildAgreement(context),
              Gap(8.h),
              CustomElevatedButton(onPressed: () {}, name: 'signUp'.tr),
              Gap(32.h),
              _buildSignUpWithRow(),
              Gap(32.h),
              _buildSocialMediaButtonRow(),
              Gap(80.h),
              _buildSignInOption(context)
            ],
          ),
        ),
      ),
    );
  }

  Row _buildAgreement(BuildContext context) {
    return Row(
      children: [
        GetBuilder<SignUpController>(builder: (controller) {
          return Checkbox(
              activeColor: yellowClr,
              value: controller.isAgree,
              onChanged: (newValue) => controller.toggleIsAgree(newValue));
        }),
        Expanded(
          child: Wrap(
            children: [
              Text('iAgreeWith'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Text('terms'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: yellowClr)),
              Text('and'.tr, style: Theme.of(context).textTheme.bodyMedium),
              Text('privacyPolicy'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: yellowClr)),
            ],
          ),
        )
      ],
    );
  }

  Row _buildSignUpWithRow() {
    return Row(
      children: [
        Expanded(
            child: Divider(
          color: greyClr,
          endIndent: 16.w,
        )),
        Text('signUpWith'.tr),
        Expanded(
            child: Divider(
          color: greyClr,
          indent: 16.w,
        )),
      ],
    );
  }

  Row _buildSocialMediaButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomSocialMediaButton(onTapped: () {}, imgUrl: AppUrls.facebook),
        Gap(8.w),
        CustomSocialMediaButton(onTapped: () {}, imgUrl: AppUrls.google)
      ],
    );
  }

  Row _buildSignInOption(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('alreadyMember'.tr, style: Theme.of(context).textTheme.bodyMedium),
        TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text('logIn'.tr,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: yellowClr)))
      ],
    );
  }
}
