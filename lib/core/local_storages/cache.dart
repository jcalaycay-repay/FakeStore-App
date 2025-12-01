import 'package:shared_preferences/shared_preferences.dart';

class NormalCache {
  NormalCache._internal();

  static final NormalCache internal = NormalCache._internal();

  static SharedPreferences? _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }


  static String? getString(String key) {
    final value = _instance?.getString(key);

    return value;
  }

  static Future<bool> setString(String key, String value) {
    return _instance!.setString(key, value);
  }




}