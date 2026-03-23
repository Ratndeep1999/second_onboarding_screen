import 'package:flutter/material.dart';
import 'package:seccond_onboarding_screen/core/services/shared_pref_service.dart';
import 'package:seccond_onboarding_screen/onboarding/data/onboarding_data.dart';
import 'package:seccond_onboarding_screen/onboarding/widgets/dot_indicator_widget.dart';
import 'package:seccond_onboarding_screen/onboarding/widgets/onboarding_data_widget.dart';
import 'package:seccond_onboarding_screen/onboarding/widgets/skip_button_widget.dart';
import 'package:seccond_onboarding_screen/screens/home_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      minimum: EdgeInsets.symmetric(horizontal: 32.0, vertical: 64.0),
      child: Column(
        children: [
          /// Skip Button
          SkipButtonWidget(onTap: () => onSkipPress()),
          const SizedBox(height: 80),

          /// Onboarding Data
          OnboardingDataWidget(
            onboardingData: onboardingData,
            pageCtrl: _pageController,
            onPageChanged: (index) => setState(() => (pageIndex = index)),
          ),
          const SizedBox(height: 60),

          /// Onboarding Page Indicator
          DotIndicatorWidget(
            length: onboardingData.length,
            pageIndex: pageIndex,
            isLastPage: (onboardingData.length == pageIndex + 1),
            onPress: onGetStartedPress,
          ),
        ],
      ),
    ),
  );

  /// Skip Button Press
  void onSkipPress() {
    _pageController.animateToPage(
      onboardingData.length - 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  /// Get Started Button Press
  void onGetStartedPress() {
    if (pageIndex == onboardingData.length - 1) {
      /// Store onBoarding State
      SharedPrefService.setOnboardingSeen();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
