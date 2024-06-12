import 'package:cook_bd/screens/onboarding_screen/models/onboarding.dart';
import 'package:cook_bd/utils/app_colors.dart';
import 'package:cook_bd/utils/app_urls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<Onboarding> _data = [
    Onboarding(
      imgUrl: AppUrls.onboarding1,
      title: 'Are you starving?',
      subTitle: 'Within a few clicks, find meals that are accessible near you',
    ),
    Onboarding(
      imgUrl: AppUrls.onboarding2,
      title: 'Are you starving?',
      subTitle: 'Within a few clicks, find meals that are accessible near you',
    ),
    Onboarding(
      imgUrl: AppUrls.onboarding3,
      title: 'Are you starving?',
      subTitle: 'Within a few clicks, find meals that are accessible near you',
    ),
  ];

  int _currentIndex = 0;
  final PageController _pageController = PageController();

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _skip() {
    // Implement skip functionality
  }

  void _prev() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.ease,
      );
    }
  }

  void _next() {
    if (_currentIndex < _data.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.ease,
      );
    } else {
      // Implement navigation to the main screen
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        itemCount: _data.length,
        itemBuilder: (context, index) {
          final onboarding = _data[index];
          return Container(
            height: double.infinity.h,
            width: double.infinity.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(onboarding.imgUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                _buildOnboardingContent(context, onboarding),
                Gap(60.h)
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildOnboardingContent(BuildContext context, Onboarding onboarding) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      height: 330.h,
      width: 310.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48.r), color: yellowClr),
      child: Column(
        children: [
          Text(onboarding.title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: darkFontClr)),
          Gap(16.h),
          Text(onboarding.subTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: darkFontClr.withOpacity(0.8)),
              textAlign: TextAlign.center),
          Gap(32.h),
          SmoothPageIndicator(
              controller: _pageController,
              count: _data.length,
              effect: ExpandingDotsEffect(
                  dotHeight: 8.0.h,
                  dotWidth: 16.0.w,
                  activeDotColor: Colors.white,
                  dotColor: Colors.grey)),
          const Spacer(),
          _buildNavigationButtons(context)
        ],
      ),
    );
  }

  Widget _buildNavigationButtons(BuildContext context) {
    return Visibility(
      visible: _currentIndex != _data.length - 1,
      replacement: Container(
          margin: EdgeInsets.only(bottom: 16.h),
          height: 60.h,
          width: 60.w,
          alignment: Alignment.center,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: IconButton(
              onPressed: () {
                // Implement finish button functionality
              },
              icon: Icon(Icons.chevron_right, color: yellowClr, size: 25.sp))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: _currentIndex == 0 ? _skip : _prev,
              child: Text(_currentIndex == 0 ? 'Skip' : 'Prev',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: darkFontClr))),
          TextButton(
              onPressed: _next,
              child: Text('Next',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: darkFontClr)))
        ],
      ),
    );
  }
}
