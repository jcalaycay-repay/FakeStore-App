import 'dart:developer' as dev;
import 'dart:math';

import 'package:fakestore/core/dio/dio.dart';
import 'package:fakestore/core/local_storages/secure.cache.dart';
import 'package:fakestore/features/data/models/user/user.model.dart';
import 'package:fakestore/features/domain/blueprints/account.dart';

class AccountRepository implements AccountRepoBlueprint {

  Future<void> authLogin(Map<String, dynamic> data) async {
    final response = await dio.post(
      "/auth/login",
      data: {
        "username": data["username"],
        "password": data["password"],
      },
    );
    await SecureCache.write("user", response.data['token']);
  }


  Future<void> signup(Map<String, dynamic> data) async {
    final response = await dio.post(
      "/users",
      data: {
        "id": _randomizer(),
        "username": data["username"],
        "email": data["email"],
        "password": data["password"],
      }
    );
    dev.log("success: ${response.data}");

    // ignore: unused_local_variable
    // Simulate fetching user data for authLogin
    final  user = await fetchUser(id: 1);
    await authLogin({
        "username": 'mor_2314',
        "password": '83r5^_',
    });
  }

  Future<void> fetchUsers() async {
    final response = await dio.get(
      "/users",
    );
    dev.log("USERS: ${response.data}");
  }

  Future<UserModel> fetchUser({
    int id = 1
  }) async{

    final Map<String, dynamic> userData = ( await 
      dio.get(
      "/users/$id",
      )
    ).data;
    return UserModel.fromJson(userData);
  }

  int _randomizer() {
    return Random().nextInt(1000000);
  }
}