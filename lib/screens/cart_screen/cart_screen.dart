import 'package:cook_bd/screens/cart_screen/widgets/package_order_widget.dart';
import 'package:cook_bd/screens/cart_screen/widgets/regular_order_widget.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> with TickerProviderStateMixin{

  late TabController _tabController ;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Gap(16.h),
          Container(
            height: 56.h,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: const Color(0xFFD9D9D9),
            ),
            child: TabBar(
              labelColor: lightBgClr,
              unselectedLabelColor: Colors.black54,
              controller: _tabController,
              dividerColor: Colors.transparent,
              indicatorSize:TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                color: yellowClr,
                borderRadius: BorderRadius.circular(8.r),
              ),
              tabs: [
                Tab(
                  text: 'regularOrder'.tr,
                ),
                Tab(
                  text: 'packageOrder'.tr,
                )
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                RegularOrderWidget(),
                PackageOrderWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
