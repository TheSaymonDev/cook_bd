import 'package:cook_bd/routes/app_routes.dart';
import 'package:cook_bd/screens/identity_verification_screen/controllers/identity_verification_controller.dart';
import 'package:cook_bd/screens/identity_verification_screen/models/choose_identity.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/widgets/custom_appbar.dart';
import 'package:cook_bd/widgets/custom_elevated_button.dart';
import 'package:cook_bd/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class IdentityVerificationScreen extends StatefulWidget {
  const IdentityVerificationScreen({super.key});

  @override
  State<IdentityVerificationScreen> createState() =>
      _IdentityVerificationScreenState();
}

class _IdentityVerificationScreenState
    extends State<IdentityVerificationScreen> {
  final _emailController = TextEditingController();

  final _mobileController = TextEditingController();

  final List<ChooseIdentity> _data = [
    ChooseIdentity(iconData: FontAwesomeIcons.phone),
    ChooseIdentity(iconData: Icons.email),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(onPressed: (){}, title: 'identityTitle'.tr),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: GetBuilder<IdentityVerificationController>(
          builder: (controller) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(180.h),
                  Text('identityTitle'.tr,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 32.sp)),
                  Gap(16.h),
                  Text('identitySubTitle'.tr,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: greyClr)),
                  Gap(32.h),
                  _buildIdentityOptions(controller),
                  Gap(16.h),
                  _buildInputField(controller, context),
                  Gap(32.h),
                  CustomElevatedButton(onPressed: () {
                    Get.toNamed(AppRoutes.otpVerificationScreen);
                  }, name: 'forgotPass'.tr)
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Align _buildIdentityOptions(IdentityVerificationController controller) {
    return Align(
      alignment: Alignment.center,
      child: Wrap(
        spacing: 16.w,
        children: List.generate(
          _data.length,
          (index) => GestureDetector(
            onTap: () => controller.chooseOption(index),
            child: Container(
                height: 55.h,
                width: 55.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: controller.selectedIndex == index
                        ? yellowClr
                        : greyClr.withOpacity(0.5)),
                child: FaIcon(_data[index].iconData, size: 25.sp)),
          ),
        ),
      ),
    );
  }

  Visibility _buildInputField(
      IdentityVerificationController controller, BuildContext context) {
    return Visibility(
      visible: controller.selectedIndex == 1,
      replacement: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('signUpMobileLabel'.tr,
              style: Theme.of(context).textTheme.bodyMedium),
          Gap(8.h),
          CustomTextFormField(
              hintText: 'signUpMobileHint'.tr,
              controller: _mobileController,
              keyBoardType: TextInputType.phone),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('logInEmailLabel'.tr,
              style: Theme.of(context).textTheme.bodyMedium),
          Gap(8.h),
          CustomTextFormField(
              hintText: 'logInEmailHint'.tr, controller: _emailController)
        ],
      ),
    );
  }
}
