// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geolocation.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeolocationModel _$GeolocationModelFromJson(Map<String, dynamic> json) =>
    _GeolocationModel(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$GeolocationModelToJson(_GeolocationModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
