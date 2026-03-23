import 'package:flutter/material.dart';
import 'package:seccond_onboarding_screen/onboarding/screens/onboarding_screen.dart';
import 'package:seccond_onboarding_screen/screens/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key, required this.isSeen});

  final bool isSeen;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "On Boarding Screens",
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: isSeen ? HomeScreen() : OnboardingScreen(),
    );
  }
}
