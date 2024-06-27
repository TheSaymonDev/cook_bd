import 'package:cook_bd/screens/shop_screen/models/food_item.dart';
import 'package:cook_bd/screens/shop_screen/widgets/food_card.dart';
import 'package:cook_bd/screens/shop_screen/widgets/icon_text.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/utils/app_urls.dart';
import 'package:cook_bd/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> with TickerProviderStateMixin {
  late final TabController _tabController;
  final Map<String, List<FoodItem>> _foodCategoryData = {
    'Recommended': recommendedItems,
    'Burger': burgerItems,
    'Juice': juiceItems,
    'Fry Chicken': fryChickenItems,
    'Drinks': drinksItems,
  };

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _foodCategoryData.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: () {
          Get.back();
        },
        title: 'Sultans Dine',
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share, size: 20.sp))
        ],
      ),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            _buildRatingInfo(context),
            Gap(8.h),
            _buildReviewHeader(context),
            TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: yellowClr,
              unselectedLabelColor: greyClr,
              dividerColor: Colors.transparent,
              indicatorColor: yellowClr,
              labelStyle: Theme.of(context).textTheme.titleSmall,
              unselectedLabelStyle: Theme.of(context).textTheme.titleSmall,
              tabAlignment: TabAlignment.start,
              controller: _tabController,
              isScrollable: true,
              tabs: _foodCategoryData.keys
                  .map((category) => Tab(text: category))
                  .toList(),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: _foodCategoryData.values
                    .map((data) => SizedBox(
                          height: double.infinity.h,
                          width: double.infinity.w,
                          child: FoodCard(
                            items: data,
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _buildReviewHeader(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('362 reviews',
                  style: Theme.of(context).textTheme.titleMedium),
              GestureDetector(
                onTap: (){},
                child: Text('See Reviews',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: yellowClr)),
              )
            ],
          );
  }

  Container _buildRatingInfo(BuildContext context) {
    return Container(
            height: 30.h,
            width: double.infinity.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                color: yellowClr.withOpacity(0.3)),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconText(title: '4.5', iconData: Icons.star),
                IconText(title: '2 KM Away', iconData: Icons.location_city_outlined),
                IconText(title: '20-30', iconData: Icons.access_time_filled_rounded),
                IconText(title: '50${AppUrls.takaSign} Delivery Fee', iconData: Icons.directions_bike),
              ],
            ),
          );
  }
}
