import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      minimum: EdgeInsets.symmetric(horizontal: 32.0, vertical: 64.0),
      child: Column(
        children: [
          /// Skip Button
          Align(
            alignment: AlignmentGeometry.topRight,
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () => debugPrint("Skip button press"),
              child: Text(
                "Skip",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black45,
                ),
              ),
            ),
          ),
          SizedBox(height: 80),

          /// Onboarding Data
          Column(
            children: [
              /// Image
              SvgPicture.asset("assets/onboarding/onboarding_1.svg"),
              SizedBox(height: 60),

              /// Title
              Text(
                "Onboarding Title One",
                style: TextStyle(
                  fontSize: 28,
                  letterSpacing: 2,
                  color: Colors.black38,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30),

              /// Description
              Text(
                "This is the description of onboarding title one.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  wordSpacing: 2,
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 60),

          /// Onboarding Page Indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              4,
              (index) => Container(
                height: 10,
                width: 10,
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          FilledButton(onPressed: () {}, child: Text("Get Started")),
        ],
      ),
    ),
  );
}
