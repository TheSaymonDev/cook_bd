import 'package:cook_bd/screens/cart_screen/widgets/bill_details_row_widget.dart';
import 'package:cook_bd/screens/cart_screen/widgets/location_view_widget.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/utils/app_urls.dart';
import 'package:cook_bd/widgets/custom_card.dart';
import 'package:cook_bd/widgets/custom_elevated_button.dart';
import 'package:cook_bd/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class RegularOrderWidget extends StatelessWidget {
  RegularOrderWidget({super.key});

  final _promoCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      height: double.infinity.h,
      width: double.infinity.w,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Gap(16.h),
            const LocationButtonWidget(),
            Gap(8.h),
            CustomTextFormField(
              hintText: 'Promo Code..',
              controller: _promoCodeController,
              prefixIcon: Icon(Icons.local_offer_outlined,
                  size: 20.sp, color: yellowClr),
              suffixIcon: TextButton(
                onPressed: () {},
                child: Text('Apply',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: yellowClr)),
              ),
            ),
            _buildOrderList(),
            _buildBillDetails(context),
            Gap(4.h),
            CustomElevatedButton(onPressed: () {}, name: 'checkout'.tr)
          ],
        ),
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

  Flexible _buildOrderList() {
    return Flexible(
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => CustomCard(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.w, vertical: 8.h),
                      height: 110.h,
                      width: double.infinity.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 85.w,
                            height: double.infinity.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                image: const DecorationImage(
                                    image: AssetImage(AppUrls.demoBurger),
                                    fit: BoxFit.cover)),
                          ),
                          Gap(16.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Chicken Burger',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium),
                                Text('100${AppUrls.takaSign}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(color: yellowClr)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Wrap(
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: [
                                        Container(
                                          height: 30.h,
                                          width: 30.w,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              border:
                                                  Border.all(color: greyClr),
                                              shape: BoxShape.circle),
                                          child: Icon(Icons.remove,
                                              color: lightFontClr,
                                              size: 15.sp),
                                        ),
                                        SizedBox(
                                          width: 30.w,
                                          child: Text('1',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium,
                                              textAlign: TextAlign.center),
                                        ),
                                        Container(
                                          height: 30.h,
                                          width: 30.w,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              border:
                                                  Border.all(color: greyClr),
                                              shape: BoxShape.circle),
                                          child: Icon(Icons.add,
                                              color: lightFontClr,
                                              size: 15.sp),
                                        ),
                                      ],
                                    ),
                                    Icon(Icons.delete,
                                        color: Colors.red, size: 25.sp)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  separatorBuilder: (context, index) => Gap(0.h),
                  itemCount: 5));
  }
}
