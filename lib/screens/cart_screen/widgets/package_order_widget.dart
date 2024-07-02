import 'package:cook_bd/screens/cart_screen/widgets/bill_details_row_widget.dart';
import 'package:cook_bd/screens/cart_screen/widgets/location_view_widget.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/utils/app_urls.dart';
import 'package:cook_bd/widgets/custom_card.dart';
import 'package:cook_bd/widgets/custom_choose_item_button.dart';
import 'package:cook_bd/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class PackageOrderWidget extends StatelessWidget {
  const PackageOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity.h,
      width: double.infinity.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Gap(16.h),
          const LocationButtonWidget(),
          Gap(8.h),
          CustomChooseItemButton(onTap: () {}, title: 'billDetails'.tr),
          Gap(8.h),
          CustomCard(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              child: const BillDetailsRowWidget(
            label: '7 Days Meal',
            value: '840 ${AppUrls.takaSign}',
            isTotal: true,
          )),
          _buildBillDetails(context),
          Gap(4.h),
          CustomElevatedButton(onPressed: () {}, name: 'checkout'.tr)
        ],
      ),
    );
  }

  CustomCard _buildBillDetails(BuildContext context) {
    return CustomCard(
      height: 150.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('billDetails'.tr,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: greyClr)),
          BillDetailsRowWidget(label: 'subTotal'.tr, value: '400 ${AppUrls.takaSign}'),
          BillDetailsRowWidget(label: 'deliveryFee'.tr, value: '50 ${AppUrls.takaSign}'),
          BillDetailsRowWidget(label: 'serviceFee'.tr, value: '15 ${AppUrls.takaSign}'),
          BillDetailsRowWidget(label: 'discount'.tr, value: '0.00 ${AppUrls.takaSign}'),
          BillDetailsRowWidget(label: 'total'.tr, value: '453 ${AppUrls.takaSign}', isTotal: true),
        ],
      ),
    );
  }

}
