import 'package:flutter/material.dart';
import 'package:seccond_onboarding_screen/core/services/shared_pref_service.dart';
import 'core/app/app.dart' show App;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final isSeen = await SharedPrefService.getOnboardingSeen();
  return runApp(App(isSeen: isSeen));
}
