// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: (json['id'] as num).toInt(),
  username: json['username'] as String,
  name: NameModel.fromJson(json['name'] as Map<String, dynamic>),
  phoneNunmber: json['phone'],
  address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
  email: json['email'] as String,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'phone': instance.phoneNunmber,
      'address': instance.address,
      'email': instance.email,
    };
