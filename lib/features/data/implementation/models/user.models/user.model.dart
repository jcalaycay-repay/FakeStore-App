import 'dart:convert';

import 'package:fakestore/features/data/implementation/models/user.models/address.model.dart';
import 'package:fakestore/features/data/implementation/models/user.models/name.model.dart';
import 'package:fakestore/features/domain/models/user.dart';

class User extends UserModel {
  User({
    required super.id, 
    required super.name,
    required super.username,
    required super.email,
    super.phoneNumber,
    super.address,
    super.age
  });

  factory User.fromJson(Map<String, dynamic> data) => User(
    id: data["id"], 
    name: Name.fromJson(
      data["name"]
    ),
    phoneNumber: data['phone'],
    username: data["username"],
    address: Address.fromJson(
      data['address'],
    ),
    email: data["email"],
  );

}