import 'package:cook_bd/routes/app_routes.dart';
import 'package:cook_bd/services/shared_preference_service.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class LocationPermissionScreen extends StatefulWidget {
   const LocationPermissionScreen({super.key});

  @override
  State<LocationPermissionScreen> createState() => _LocationPermissionScreenState();
}

class _LocationPermissionScreenState extends State<LocationPermissionScreen> {
  bool _locationPermissionGranted = false;

  String _currentLocation = '';

  Future<void> _checkLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    _locationPermissionGranted = permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
    setState(() {}); // Update UI based on permission status
  }

  Future<void> _getCurrentLocation() async {
    if (_locationPermissionGranted) {
      try {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low,
          timeLimit: const Duration(seconds: 5),
        );

        List<Placemark> placeMarks = await placemarkFromCoordinates(
          position.latitude,
          position.longitude,
        );

        Placemark placeMark =
        placeMarks[0]; // Assuming first result is accurate
        _currentLocation =
        '${placeMark.locality}, ${placeMark.country}'; // Format as desired
      } catch (error) {
        debugPrint('Error getting location: $error');
        _currentLocation = 'Unable to determine location.';
      }

      SharedPreferencesService().saveLocation(_currentLocation);
    }
  }

  Future<void> _navigateToHomeScreen() async {
    await _checkLocationPermission();
    if (_locationPermissionGranted) {
      await _getCurrentLocation();
    }
   Get.toNamed(AppRoutes.homeScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 142.h,
              width: 142.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: yellowClr
              ),
              child: Icon(Icons.location_on_outlined, size: 80.sp, color: darkFontClr)
            ),
            Gap(32.h),
            Text('locationTitle'.tr, style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 36.sp)),
            Gap(32.h),
            Text('locationSubTitle'.tr, style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center),
            Gap(48.h),
            CustomElevatedButton(onPressed: (){
              _navigateToHomeScreen();
            }, name: 'locationBtnName'.tr),
            Gap(8.h),
            TextButton(onPressed: (){}, child: Text('locationBtnName1'.tr, style: Theme.of(context).textTheme.bodyMedium))
          ],
        ),
      ),
    );
  }
}
