import 'package:cook_bd/routes/app_routes.dart';
import 'package:cook_bd/screens/profile_screen/widgets/profile_clickable_item.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/widgets/custom_outlined_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(16.h),
            Container(
              height: 100.h,
              width: 100.w,
              alignment: Alignment.center,
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, color: yellowClr),
              child: Icon(
                Icons.person_sharp,
                size: 70.sp,
                color: lightBgClr,
              ),
            ),
            Gap(16.h),
            Text('Md. Saymon', style: Theme.of(context).textTheme.titleLarge),
            Text('cookbd@gmail.com',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: greyClr)),
            const Divider(
              color: greyClr,
            ),
            ProfileClickableItem(
                iconData: Icons.person_outline,
                title: 'personalData',
                onTap: () {
                  Get.toNamed(AppRoutes.profileUpdateScreen);
                }),
            Gap(16.h),
            ProfileClickableItem(
                iconData: Icons.favorite_outline,
                title: 'favourites',
                onTap: () {}),
            Gap(16.h),
            ProfileClickableItem(
                iconData: Icons.history, title: 'orderHistory', onTap: () {}),
            Gap(16.h),
            ProfileClickableItem(
                iconData: Icons.card_giftcard_outlined,
                title: 'offers',
                onTap: () {}),
            Gap(16.h),
            ProfileClickableItem(
                iconData: Icons.location_on_outlined,
                title: 'location',
                onTap: () {}),
            Gap(16.h),
            ProfileClickableItem(
                iconData: Icons.settings_outlined,
                title: 'settings',
                onTap: () {}),
            Gap(16.h),
            ProfileClickableItem(
                iconData: Icons.help_center_outlined,
                title: 'helpCenter',
                onTap: () {}),
            Gap(16.h),
            ProfileClickableItem(
                iconData: Icons.delete_outline,
                title: 'requestAccountDeletion',
                onTap: () {}),
            Gap(32.h),
            CustomOutlinedIconButton(onPressed: (){}, name: 'Sign Out', iconData: Icons.logout)
          ],
        ),
      ),
    );
  }
}
