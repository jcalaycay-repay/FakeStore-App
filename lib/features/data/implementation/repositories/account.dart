import 'dart:developer' as dev;
import 'dart:math';

import 'package:fakestore/core/dio/dio.dart';
import 'package:fakestore/core/local_storages/secure.cache.dart';
import 'package:fakestore/features/data/implementation/models/user.models/user.model.dart';
import 'package:fakestore/features/domain/blueprints/account.dart';

class AccountRepository implements AccountRepoBlueprint {

  Future<void> authLogin(Map<String, dynamic> data) async {

    print(data);
    final response = await dio.post(
      "/auth/login",
      data: {
        "username": data["username"],
        "password": data["password"],
      },
    );

    print("TOKEN: ${response.data}");

    await SecureCache.write("user", response.data['token']);

    // await fetchUserById();


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

  Future<User> fetchUser({
    int id = 1
  }) async{
    final Map<String, dynamic> userData = ( await 
      dio.get(
      "/users/$id",
      )
    ).data;

    print("USER DATA: ${userData}");

    return User.fromJson(userData);
  }

  int randomizer() {
    return Random().nextInt(1000000);
  }
}