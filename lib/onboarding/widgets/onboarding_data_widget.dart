import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingDataWidget extends StatelessWidget {
  const OnboardingDataWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.desc,
  });

  final String imagePath;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Image
        SvgPicture.asset(imagePath),
        const SizedBox(height: 60),

        /// Title
        Text(
          title,
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
          desc,
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
  }
}
