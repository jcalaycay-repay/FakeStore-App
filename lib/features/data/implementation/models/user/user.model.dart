import 'package:fakestore/features/data/implementation/models/address/address.model.dart';
import 'package:fakestore/features/data/implementation/models/name/name.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';


@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String username,
    required NameModel name,
    @JsonKey(name: 'phone') phoneNunmber,
    required AddressModel address,
    required String email,
  }) =  _UserModel;

  
  factory UserModel.fromJson(Map<String, dynamic> data) => _$UserModelFromJson(data);
}