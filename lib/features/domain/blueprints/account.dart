
abstract class AccountRepoBlueprint {
  Future<void> authLogin(Map<String, dynamic> data);

  Future<void> signup(Map<String, dynamic> data);

  Future<void> fetchUsers();

  Future<void> fetchUser({
    int id
  });

  int _randomizer();
}