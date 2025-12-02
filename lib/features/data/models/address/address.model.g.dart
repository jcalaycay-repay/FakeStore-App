// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressModel _$AddressModelFromJson(Map<String, dynamic> json) =>
    _AddressModel(
      unitNumber: json['unitNumber'] as String? ?? 'number',
      street: json['street'] as String,
      city: json['city'] as String,
      zipCode: json['zipcode'] as String,
      location: json['geolocation'] == null
          ? null
          : GeolocationModel.fromJson(
              json['geolocation'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AddressModelToJson(_AddressModel instance) =>
    <String, dynamic>{
      'unitNumber': instance.unitNumber,
      'street': instance.street,
      'city': instance.city,
      'zipcode': instance.zipCode,
      'geolocation': instance.location,
    };
