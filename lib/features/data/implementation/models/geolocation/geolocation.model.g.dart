// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geolocation.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeolocationModel _$GeolocationModelFromJson(Map<String, dynamic> json) =>
    _GeolocationModel(
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$GeolocationModelToJson(_GeolocationModel instance) =>
    <String, dynamic>{'lat': instance.latitude, 'long': instance.longitude};
