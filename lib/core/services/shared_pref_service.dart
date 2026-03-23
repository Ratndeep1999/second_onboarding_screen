import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  /// Singleton
  SharedPrefService._internal();

  static final SharedPrefService _instance = SharedPrefService._internal();

  static SharedPrefService get instance => _instance;

  /// Key
  static const String _onBoardingKey = "onboarding_seen";

  /// Set Onboarding Seen
  static Future<void> setOnboardingSeen() async {
    final _prefs = await SharedPreferences.getInstance();
    await _prefs.setBool(_onBoardingKey, true);
  }

  /// Get Onboarding Seen
  static Future<bool> getOnboardingSeen() async {
    final _prefs = await SharedPreferences.getInstance();
    return _prefs.getBool(_onBoardingKey) ?? false;
  }

  /// Clear Onboarding State
  Future<void> clearOnboardingState() async {
    final _prefs = await SharedPreferences.getInstance();
    _prefs.clear();
  }
}
