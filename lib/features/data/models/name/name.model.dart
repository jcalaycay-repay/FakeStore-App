import 'package:freezed_annotation/freezed_annotation.dart';

part 'name.model.freezed.dart';
part 'name.model.g.dart';


@freezed
abstract class NameModel with _$NameModel {
  const NameModel._();

  const factory NameModel({
    required String firstname,
    required String lastname,
  }) = _NameModel;

  factory NameModel.fromJson(Map<String, dynamic> data) => _$NameModelFromJson(data);

  String get fullname => "$firstname, $lastname";

  String get invertedFull => "$lastname $firstname";
  
}