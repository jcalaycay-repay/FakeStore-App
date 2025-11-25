class UserModel {
  final int id;
  final String firstname;
  final String lastname;
  final String? nickname;
  final int? age;


  const UserModel({
    required this.id,
    required this.firstname,
    required this.lastname,
    this.nickname,
    this.age
  });
}