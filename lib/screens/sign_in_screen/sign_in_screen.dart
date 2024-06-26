import 'package:cook_bd/routes/app_routes.dart';
import 'package:cook_bd/screens/sign_in_screen/controllers/sign_in_controller.dart';
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

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onPressed: (){}, title: 'signIn'.tr),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(80.h),
              Text('logInTitle'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 32.sp)),
              Gap(16.h),
              Text('logInSubTitle'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: greyClr)),
              Gap(16.h),
              Text('logInEmailLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              CustomTextFormField(
                  hintText: 'logInEmailHint'.tr, controller: _emailController),
              Gap(16.h),
              Text('logInPasswordLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              GetBuilder<SignInController>(
                builder: (controller) {
                  return CustomTextFormField(
                      hintText: 'logInPasswordHint'.tr,
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
                },
              ),
              Gap(8.h),
              _buildRememberMeAndForgotPassword(),
              Gap(8.h),
              CustomElevatedButton(onPressed: () {}, name: 'signIn'.tr),
              Gap(32.h),
              _buildSocialMediaButtonRow(),
              Gap(32.h),
              _buildSignInWithRow(),
              Gap(80.h),
              _buildSignUpOption(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRememberMeAndForgotPassword() {
    return Row(
      children: [
        GetBuilder<SignInController>(
          builder: (controller) {
            return Checkbox(
                activeColor: yellowClr,
                value: controller.isKeepMe,
                onChanged: controller.toggleIsKeepMe);
          },
        ),
        Text('keepMe'.tr, style: Theme.of(context).textTheme.bodyMedium),
        const Spacer(),
        TextButton(
            onPressed: () {
              Get.toNamed(AppRoutes.identityVerificationScreen);
            },
            child: Text('forgotPassword'.tr,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: yellowClr)))
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

  Row _buildSignInWithRow() {
    return Row(
      children: [
        Expanded(
            child: Divider(
          color: greyClr,
          endIndent: 16.w,
        )),
        Text('signInWith'.tr),
        Expanded(
            child: Divider(
          color: greyClr,
          indent: 16.w,
        )),
      ],
    );
  }

  Row _buildSignUpOption(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('haveAnAccount'.tr, style: Theme.of(context).textTheme.bodyMedium),
        TextButton(
            onPressed: () {
              Get.toNamed(AppRoutes.signUpScreen);
            },
            child: Text('register'.tr,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: yellowClr)))
      ],
    );
  }
}
