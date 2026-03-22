import 'package:seccond_onboarding_screen/onboarding/model/onboarding_model.dart';
import 'package:seccond_onboarding_screen/utils/constants/app_icons.dart';
import 'package:seccond_onboarding_screen/utils/constants/app_text.dart';

final List<OnboardingModel> onboardingData = [
  OnboardingModel(
    title: AppText.kOnBoardingTitle1,
    desc: AppText.kOnBoardingDesc1,
    image: AppIcons.kOnBoarding_icon1,
  ),
  OnboardingModel(
    title: AppText.kOnBoardingTitle2,
    desc: AppText.kOnBoardingDesc2,
    image: AppIcons.kOnBoarding_icon2,
  ),
  OnboardingModel(
    title: AppText.kOnBoardingTitle3,
    desc: AppText.kOnBoardingDesc3,
    image: AppIcons.kOnBoarding_icon3,
  ),
  OnboardingModel(
    title: AppText.kOnBoardingTitle4,
    desc: AppText.kOnBoardingDesc4,
    image: AppIcons.kOnBoarding_icon4,
  ),
];
