import 'dart:developer' as dev;
import 'dart:math';

import 'package:fakestore/core/dio/dio.dart';
import 'package:fakestore/core/local_storages/secure_cache.dart';
import 'package:fakestore/features/domain/blueprints/account.dart';

class AccountRepository implements AccountRepoBlueprint {

  Future<void> login(Map<String, dynamic> data) async {
    // print(data);
    final response = await dio.post(
      "/auth/login",
      data: {
        "username": data["username"],
        "password": data["password"],
      },
    );

    print(response.data);

    // SecureCache.write("user", response.data);

  }


  Future<void> signup(Map<String, dynamic> data) async {
    final response = await dio.post(
      "/users",
      data: {
        "id": randomizer(),
        "username": data["username"],
        "email": data["email"],
        "password": data["password"],
      }
    );

    dev.log("success: ${response.data}");
  }

  Future<void> fetchUsers() async {
    final response = await dio.get(
      "/users",

    );

    dev.log("USERS: ${response.data}");
  }

  int randomizer() {
    return Random().nextInt(1000000);
  }
}