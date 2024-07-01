import 'package:cook_bd/screens/set_package_screen/models/package_item.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/widgets/custom_appbar.dart';
import 'package:cook_bd/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SetPackageScreen extends StatefulWidget {
  const SetPackageScreen({super.key});

  @override
  State<SetPackageScreen> createState() => _SetPackageScreenState();
}

class _SetPackageScreenState extends State<SetPackageScreen> {
  String _selectedDateRange = 'chooseDate'.tr;
  String _selectedTime = 'chooseTime'.tr;
  List<String> _dateList = [];

  @override
  Widget build(BuildContext context) {
    String title = Get.arguments.toString();
    return Scaffold(
      appBar: CustomAppBar(
          onPressed: () {
            Get.back();
          },
          title: 'Set $title Package'),
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Gap(16.h),
            _buildChooseItem(context, _selectedDateRange, _pickDateRange),
            Gap(16.h),
            _buildChooseItem(context, _selectedTime, _pickTime),
            Gap(16.h),
            CustomElevatedButton(onPressed: () {}, name: 'Generate'),
            Expanded(
                child: ListView.separated(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    itemBuilder: (context, index) => Column(
                          children: [
                            Container(
                              height: 44.h,
                              width: double.infinity.w,
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  color: yellowClr),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Day 1',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(color: darkFontClr)),
                                  Text('2024-07-01',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(color: darkFontClr)),
                                ],
                              ),
                            ),
                            Gap(8.h),
                            Column(
                              children: List.generate(
                                packages.length,
                                (index) => Container(
                                  margin: EdgeInsets.only(bottom: 8.h),
                                  height: 44.h,
                                  width: double.infinity.w,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.w),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.r),
                                      color: lightBgClr,
                                      border: Border.all(color: greyClr)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('1. ${packages[index].name}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium),
                                      Row(
                                        children: [
                                          Icon(Icons.remove, size: 20.sp),
                                          SizedBox(
                                              width: 40.w,
                                              child: Text(packages[index].quantity.toString(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium,
                                                  textAlign: TextAlign.center)),
                                          Icon(Icons.add, size: 20.sp),
                                          Gap(32.w),
                                          Icon(Icons.delete,
                                              color: Colors.red, size: 20.sp)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                    separatorBuilder: (context, index) => Gap(16.h),
                    itemCount: 5))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: yellowClr,
          foregroundColor: lightBgClr,
          child: const Icon(Icons.add_shopping_cart)),
    );
  }

  Widget _buildChooseItem(
      BuildContext context, String title, void Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
            color: lightBgClr,
            border: Border.all(color: yellowClr),
            borderRadius: BorderRadius.circular(8.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            Icon(Icons.arrow_circle_down, size: 20.sp, color: yellowClr)
          ],
        ),
      ),
    );
  }

  Future<void> _pickDateRange() async {
    DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      setState(() {
        _selectedDateRange =
            "${DateFormat('yyyy-MM-dd').format(picked.start)} - ${DateFormat('yyyy-MM-dd').format(picked.end)}";
        _dateList = _collectDates(picked.start, picked.end);
      });
    }
  }

  Future<void> _pickTime() async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        _selectedTime = picked.format(context);
      });
    }
  }

  List<String> _collectDates(DateTime start, DateTime end) {
    List<String> dates = [];
    for (int i = 0; i <= end.difference(start).inDays; i++) {
      DateTime date = start.add(Duration(days: i));
      dates.add(DateFormat('yyyy-MM-dd').format(date));
    }
    return dates;
  }
}
