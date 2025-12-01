import 'dart:developer';

import 'package:fakestore/features/domain/enums/storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureCache {
  SecureCache._internal();

  static final SecureCache internal = SecureCache._internal();

  static FlutterSecureStorage? _instance;

  static Future<void> init() async {
    final AndroidOptions aOptions = const AndroidOptions(
      encryptedSharedPreferences: true,
      sharedPreferencesName: "android_secure_storage"
    );

    _instance = FlutterSecureStorage(
      aOptions: aOptions
    );
  }

  // static FlutterSecureStorage? get storage => _instance;


  static Future<bool?> write(String key,String value) async {
    final success = await _instance!.write(key: key, value: value)
      .then((_) => true)
      .onError((error, _) {
        log(error.runtimeType.toString());
        return false;
      });

      return success;
  }

  static Future<String?> getString(Storage key) async {
    return await _instance!.read(key: key.name);
  }

  static Future<void> delete(Storage key) async {
    if(await _instance!.read(key: key.name) != null){
      return await _instance!.delete(key: key.name);
    }

    debugPrint("Data does not exist");
  }




}