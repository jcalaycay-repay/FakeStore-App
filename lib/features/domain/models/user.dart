import 'package:fakestore/features/data/implementation/models/user.models/address.model.dart';
import 'package:fakestore/features/data/implementation/models/user.models/name.model.dart';

class UserModel {
  final int id;
  final Name name;
  final String username;
  final String email;
  final String? phoneNumber;
  final Address? address;
  final int? age;


  const UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.phoneNumber,
    this.address,
    this.age
  });
}