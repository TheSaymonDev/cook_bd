import 'package:cook_bd/screens/package_screen/models/package_model.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PackageCard extends StatelessWidget {
  final String title;
  final List<PackageModel> packageItems;

  const PackageCard({required this.title, required this.packageItems, super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 4,
      color: lightBgClr,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: yellowClr, width: 2.w),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    packageItems[index].item,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    packageItems[index].quantity,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              separatorBuilder: (context, index) => Gap(8.h),
              itemCount: packageItems.length,
            ),
          ],
        ),
      ),
    );
  }
}
