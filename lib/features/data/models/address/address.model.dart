
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fakestore/features/data/models/geolocation/geolocation.model.dart';

part 'address.model.freezed.dart';
part 'address.model.g.dart';

@freezed
abstract class AddressModel with _$AddressModel {
  const AddressModel._();

  const factory AddressModel({
    @JsonKey(defaultValue: "number") String? unitNumber,
    required String street,
    required String city,
    @JsonKey(name: "zipcode") required String zipCode,
    @JsonKey(name: 'geolocation') GeolocationModel? location,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> data) => _$AddressModelFromJson(data);
}

