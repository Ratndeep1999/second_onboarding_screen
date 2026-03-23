import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seccond_onboarding_screen/onboarding/model/onboarding_model.dart';

class OnboardingDataWidget extends StatelessWidget {
  const OnboardingDataWidget({
    super.key,
    required this.onboardingData,
    required this.pageCtrl,
    this.onPageChanged,
  });

  final List<OnboardingModel> onboardingData;
  final PageController pageCtrl;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageCtrl,
        onPageChanged: onPageChanged,
        itemCount: onboardingData.length,
        itemBuilder: (BuildContext context, int index) {
          /// Get Specific Items
          final item = onboardingData[index];
          return Column(
            children: [
              /// Image
              SvgPicture.asset(item.image),
              const SizedBox(height: 60),

              /// Title
              Text(
                item.title,
                style: TextStyle(
                  fontSize: 28,
                  letterSpacing: 2,
                  color: Colors.black38,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),

              /// Description
              Text(
                item.desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  wordSpacing: 2,
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
