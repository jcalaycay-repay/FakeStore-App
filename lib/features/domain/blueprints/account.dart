import 'package:fakestore/features/data/implementation/models/user.models/user.model.dart';

abstract class AccountRepoBlueprint {
  // Future<User> login(Map<String, dynamic> data);

  Future<void> authLogin(Map<String, dynamic> data);

  Future<void> signup(Map<String, dynamic> data);

  Future<void> fetchUsers();

  Future<void> fetchUser({
    int id
  });

  int _randomizer();
}