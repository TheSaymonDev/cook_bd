import 'package:cook_bd/screens/shop_screen/models/food_item.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/utils/app_urls.dart';
import 'package:cook_bd/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';

class FoodCard extends StatelessWidget {

  final List<FoodItem> items;
  const FoodCard({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.h,
      crossAxisSpacing: 8.w,
      itemBuilder: (context, index) => InkWell(
        onTap: (){

        },
        borderRadius: BorderRadius.circular(12.r),
        child: CustomCard(
          height: 296.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: double.infinity.h,
                  width: double.infinity.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          topRight: Radius.circular(12.r)),
                      image:  DecorationImage(
                          image: AssetImage(items[index].imageUrl),
                          fit: BoxFit.cover)),
                ),
              ),
              Gap(4.h),
              Padding(
                padding:  EdgeInsets.only(left: 8.w),
                child: Text(items[index].name,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium),
              ),
              Gap(8.h),
              Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 4.w,
                      children: [
                        Icon(Icons.price_change_outlined,
                            size: 20.sp, color: yellowClr),
                        Text('${items[index].price}${AppUrls.takaSign}',
                            style:
                            Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                   Wrap(
                     crossAxisAlignment: WrapCrossAlignment.center,
                     spacing: 4.w,
                     children: [
                       Icon(Icons.star_border_purple500,
                           color: yellowClr, size: 16.sp),
                       Text(items[index].rating,
                           style:
                           Theme.of(context).textTheme.titleSmall),
                     ],
                   ),
                    Text(
                      items[index].availableItem,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: greyClr),
                    )
                  ],
                ),
              ),
              Gap(4.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 4.w,
                    children: [
                      Icon(Icons.timer_outlined,
                          size: 20.sp, color: yellowClr),
                      Text(items[index].time,
                          style:
                          Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                    GestureDetector(
                      onTap: (){},
                      child: CircleAvatar(
                        backgroundColor: yellowClr,
                        radius: 15.r,
                        child: Icon(Icons.add, color: darkFontClr, size: 16.sp)
                      ),
                    )
                  ],
                ),
              ),
              Gap(4.h),
            ],
          ),
        ),
      ),
      itemCount: items.length,
    );
  }
}
