import 'package:flutter/material.dart';

class DotIndicatorWidget extends StatelessWidget {
  const DotIndicatorWidget({super.key, required this.length});

  final int length;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
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
    );
  }
}
