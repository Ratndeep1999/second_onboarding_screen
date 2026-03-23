import 'package:flutter/material.dart';

class SkipButtonWidget extends StatelessWidget {
  const SkipButtonWidget({super.key, required this.onTap});

  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.topRight,
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: onTap,
        child: const Text(
          "Skip",
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black45,
          ),
        ),
      ),
    );
  }
}
