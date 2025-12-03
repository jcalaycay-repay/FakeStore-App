
import 'package:fakestore/features/domain/enums/storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NormalCache {
  NormalCache._internal();

  static final NormalCache internal = NormalCache._internal();

  static SharedPreferences? _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  // TYPE String
  static String? getString(Storage key) {
    final value = _instance?.getString(key.name);

    return value;
  }

  static Future<bool> setString(Storage key, String value) {
    return _instance!.setString(key.name, value);
  }


  // TYPE List<String>
  static List<String>? getStringList(Storage key) {
    final value = _instance!.getStringList(key.name);

    return value;
  }

  static Future<bool> setStringList(Storage key, List<String> value){
    return _instance!.setStringList(key.name, value);
  }


  static void remove(Storage key) {
    _instance!.remove(key.name);
  }



}