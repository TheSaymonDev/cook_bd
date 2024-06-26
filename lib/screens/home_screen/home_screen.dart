import 'package:cook_bd/screens/cart_screen/cart_screen.dart';
import 'package:cook_bd/screens/explore_screen/explore_screen.dart';
import 'package:cook_bd/screens/home_screen/controllers/bottom_nav_controller.dart';
import 'package:cook_bd/screens/my_order_screen/my_order_screen.dart';
import 'package:cook_bd/screens/package_screen/package_screen.dart';
import 'package:cook_bd/screens/profile_screen/profile_screen.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Widget> _screens = [
    const ExploreScreen(),
    PackageScreen(),
    const CartScreen(),
    const MyOrderScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(builder: (controller) {
      return Scaffold(
        body: _screens.elementAt(controller.selectedIndex),
        bottomNavigationBar: NavigationBar(
          height: 92.h,
          elevation: 5,
          onDestinationSelected: controller.changeScreen,
          selectedIndex: controller.selectedIndex,
          destinations: [
            _buildNavigationDestination(
                iconData: FontAwesomeIcons.house, label: 'nav1'),
            _buildNavigationDestination(
                iconData: FontAwesomeIcons.cube, label: 'nav2'),
            _buildNavigationDestination(
                iconData: FontAwesomeIcons.opencart, label: 'nav3'),
            _buildNavigationDestination(
                iconData: FontAwesomeIcons.cartFlatbedSuitcase, label: 'nav4'),
            _buildNavigationDestination(
                iconData: FontAwesomeIcons.userTie, label: 'nav5')
          ],
        ),
      );
    });
  }

  NavigationDestination _buildNavigationDestination({
    required IconData iconData,
    required String label,
  }) {
    return NavigationDestination(
      icon: FaIcon(iconData, size: 20.sp),
      selectedIcon: FaIcon(iconData, color: yellowClr, size: 22.sp),
      label: label.tr,
    );
  }
}
