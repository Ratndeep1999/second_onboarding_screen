import 'package:flutter/material.dart';
import 'package:seccond_onboarding_screen/core/services/shared_pref_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Home Screen"),
      backgroundColor: Colors.orange.shade300,
      centerTitle: true,
    ),
    body: SafeArea(
      child: Center(
        child: FilledButton(
          onPressed: SharedPrefService.clearOnboardingState,
          child: Text("Clear State"),
        ),
      ),
    ),
  );
}
