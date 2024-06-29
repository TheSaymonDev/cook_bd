import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/utils/app_urls.dart';
import 'package:cook_bd/widgets/custom_card.dart';
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
      child: Column(
        children: [
          Gap(16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('deliveryLocation'.tr,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: greyClr)),
                  Text('Gollamari, Khulna'.tr,
                      style: Theme.of(context).textTheme.titleMedium)
                ],
              ),
              OutlinedButton.icon(
                  onPressed: () {},
                  label: Text('changeLocation'.tr,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: yellowClr)),
                  icon: Icon(Icons.location_on_outlined,
                      size: 15.sp, color: yellowClr),
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: yellowClr)))
            ],
          ),
          Gap(8.h),
          CustomTextFormField(
            hintText: 'Promo Code..',
            controller: _promoCodeController,
            prefixIcon:
                Icon(Icons.local_offer_outlined, size: 20.sp, color: yellowClr),
            suffixIcon: TextButton(
              onPressed: () {},
              child: Text('Apply',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: yellowClr)),
            ),
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => CustomCard(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                      height: 130.h,
                      width: double.infinity.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 85.w,
                            height: double.infinity.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                image: DecorationImage(
                                    image: AssetImage(AppUrls.demoBurger),
                                    fit: BoxFit.cover)),
                          ),
                          Gap(16.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                              color: lightFontClr, size: 15.sp),
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
                                              color: lightFontClr, size: 15.sp),
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
                  separatorBuilder: (context, index) => Gap(4.h),
                  itemCount: 10))
        ],
      ),
    );
  }
}
