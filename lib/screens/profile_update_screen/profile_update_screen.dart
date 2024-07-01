import 'package:cook_bd/screens/profile_update_screen/controllers/profile_update_controller.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/widgets/custom_appbar.dart';
import 'package:cook_bd/widgets/custom_elevated_button.dart';
import 'package:cook_bd/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProfileUpdateScreen extends StatelessWidget {
  ProfileUpdateScreen({super.key});

  final _fullNameController = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          onPressed: () {
            Get.back();
          },
          title: 'profileUpdate'.tr),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GetBuilder<ProfileUpdateController>(builder: (controller) {
                return GestureDetector(
                  onTap: () {
                    controller.getImageFromGallery();
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 100.h,
                          width: 100.w,
                          child: controller.imageFile == null
                              ? CircleAvatar(
                                  backgroundColor: yellowClr,
                                  child: Icon(Icons.person_sharp,
                                      size: 70.sp, color: lightBgClr),
                                )
                              : CircleAvatar(
                                  foregroundImage:
                                      FileImage(controller.imageFile!),
                                ),
                        ),
                        Positioned(
                          child: CircleAvatar(
                              radius: 16.r,
                              backgroundColor: const Color(0xFFF5F5FF),
                              child: Icon(Icons.camera_alt,
                                  size: 15.sp, color: yellowClr)),
                        )
                      ],
                    ),
                  ),
                );
              }),
              Text('fullNameLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              CustomTextFormField(
                  hintText: 'fullNameHint'.tr, controller: _fullNameController),
              Gap(16.h),
              Text('dateOfBirthLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              CustomTextFormField(
                  suffixIcon: IconButton(
                      onPressed: () {
                        dateSelection(_dateOfBirthController, context);
                      },
                      icon: Icon(Icons.calendar_month,
                          color: yellowClr, size: 20.sp)),
                  readOnly: true
                  ,
                  hintText: 'dateOfBirthHint'.tr,
                  controller: _dateOfBirthController),
              Gap(16.h),
              Text('signUpEmailLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              CustomTextFormField(
                  suffixIcon: Icon(Icons.verified_outlined,
                      color: yellowClr, size: 20.sp),
                  readOnly: true,
                  hintText: 'signUpEmailHint'.tr,
                  controller: _emailController),
              Gap(16.h),
              Text('signUpMobileLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              CustomTextFormField(
                  suffixIcon: Icon(Icons.verified_outlined,
                      color: yellowClr, size: 20.sp),
                  readOnly: true,
                  hintText: 'signUpMobileHint'.tr,
                  controller: _mobileController),
              Gap(16.h),
              Text('signUpPasswordLabel'.tr,
                  style: Theme.of(context).textTheme.bodyMedium),
              Gap(8.h),
              CustomTextFormField(
                  readOnly: true,
                  hintText: 'signUpPasswordHint'.tr,
                  controller: _passwordController),
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text('changePassword'.tr,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: yellowClr))),
              ),
              CustomElevatedButton(onPressed: () {}, name: 'save'.tr)
            ],
          ),
        ),
      ),
    );
  }

  void dateSelection(
      TextEditingController controller, BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2023, 12, 31),
      firstDate: DateTime(1970),
      lastDate: DateTime.now(),
    );
    if (selectedDate != null) {
      // Update your controller with the selected date
      controller.text = DateFormat('yyyy-MM-dd').format(selectedDate);
    }
  }

}
