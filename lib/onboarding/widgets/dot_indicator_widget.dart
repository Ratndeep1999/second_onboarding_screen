import 'package:flutter/material.dart';
import 'package:seccond_onboarding_screen/onboarding/widgets/get_started_button_widget.dart';

class DotIndicatorWidget extends StatelessWidget {
  const DotIndicatorWidget({
    super.key,
    required this.length,
    required this.pageIndex,
    required this.isLastPage,
    required this.onPress,
  });

  final int length;
  final int pageIndex;
  final bool isLastPage;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    /// Check Condition
    return isLastPage
        /// Get Started Button
        ? GetStartedButtonWidget(onPress: onPress)
        /// Dot Indicator
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              length,
              (index) => AnimatedContainer(
                height: 10,
                width: 10,
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  /// Check Indication
                  color: (index == pageIndex) ? Colors.black54 : Colors.black12,
                  shape: BoxShape.circle,
                ),
                duration: Duration(milliseconds: 500),
                curve: Curves.linear,
              ),
            ),
          );
  }
}
