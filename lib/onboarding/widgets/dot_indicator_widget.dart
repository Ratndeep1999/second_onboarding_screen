import 'package:flutter/material.dart';

class DotIndicatorWidget extends StatelessWidget {
  const DotIndicatorWidget({
    super.key,
    required this.length,
    required this.pageIndex,
  });

  final int length;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
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
