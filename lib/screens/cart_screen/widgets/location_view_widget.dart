import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/widgets/custom_outlined_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LocationButtonWidget extends StatelessWidget {
  const LocationButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
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
        CustomOutlinedIconButton(
            onPressed: () {},
            name: 'changeLocation'.tr,
            iconData: Icons.location_on_outlined,
            color: yellowClr,
            width: 180.w)
      ],
    );
  }
}
