import 'package:flutter/material.dart';
import 'package:seccond_onboarding_screen/screens/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      title: "On Boarding Screens",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
