import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/utils/app_urls.dart';
import 'package:cook_bd/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int _selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeader(context),
        Gap(8.h),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('findByC'.tr,
                    style: Theme.of(context).textTheme.titleMedium),
                _buildCategoryList(),
                _buildHotelGridView()
              ],
            ),
          ),
        )
      ],
    );
  }

  Container _buildHeader(BuildContext context) {
    return Container(
        height: 180.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppUrls.exploreBg), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLocationRow(context),
            Text(
              'exploreHeading'.tr,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 32.sp, color: darkFontClr),
            ),
            Gap(16.h)
          ],
        ),
      );
  }

  Row _buildLocationRow(BuildContext context) {
    return Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('yourLocation'.tr,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: darkFontClr)),
                      Icon(Icons.keyboard_arrow_down_outlined,
                          size: 20.sp, color: darkFontClr)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,
                          size: 25.sp, color: darkFontClr),
                      Text('Gollamari, Khulna',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: darkFontClr)),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.search, size: 30.sp, color: darkFontClr)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_outlined,
                      size: 30.sp, color: darkFontClr)),
            ],
          );
  }

  SizedBox _buildCategoryList() {
    return SizedBox(
      height: 74.h,
      width: double.infinity.w,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              _selectedCategory = index;
              setState(() {});
            },
            child: CustomCard(
              width: 74.w,
              cardClr: _selectedCategory == index
                  ? yellowClr
                  : lightBgClr,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppUrls.burger),
                  Gap(4.h),
                  Text(
                    'Burger',
                    style: _selectedCategory == index
                        ? Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: darkFontClr)
                        : Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.black54),
                  )
                ],
              ),
            ),
          ),
          separatorBuilder: (context, index) => Gap(6.w),
          itemCount: 10),
    );
  }

  Expanded _buildHotelGridView() {
    return Expanded(
      child: SizedBox(
        height: double.infinity.h,
        width: double.infinity.w,
        child: MasonryGridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 12.h,
          crossAxisSpacing: 8.w,
          itemBuilder: (context, index) => CustomCard(
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
                        image: const DecorationImage(
                            image: AssetImage(AppUrls.demoHotel),
                            fit: BoxFit.cover)),
                  ),
                ),
                Gap(4.h),
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Row(
                    children: [
                      Text('Sultan Dine',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium),
                      const Spacer(),
                      Icon(Icons.star_border_purple500,
                          color: yellowClr, size: 25.sp),
                      Text('4.5',
                          style:
                          Theme.of(context).textTheme.titleSmall),
                      const Spacer(),
                      Text(
                        '1000+',
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
                  padding: EdgeInsets.only(left: 8.w),
                  child: Text('Biriyani',
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                Gap(4.h),
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Row(
                    children: [
                      Icon(Icons.timer_outlined,
                          size: 20.sp, color: yellowClr),
                      Text('25 min',
                          style:
                          Theme.of(context).textTheme.bodySmall),
                      Gap(16.w),
                      Icon(Icons.price_change_outlined,
                          size: 20.sp, color: yellowClr),
                      Text('50${AppUrls.takaSign}',
                          style:
                          Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                ),
                Gap(4.h),
              ],
            ),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
