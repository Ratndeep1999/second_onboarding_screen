import 'package:flutter/material.dart';

class GetStartedButtonWidget extends StatelessWidget {
  const GetStartedButtonWidget({super.key, required this.onPress});

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: onPress, child: const Text("Get Started"));
  }
}
