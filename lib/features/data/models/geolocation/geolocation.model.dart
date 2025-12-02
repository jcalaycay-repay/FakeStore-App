import 'package:freezed_annotation/freezed_annotation.dart';

part 'geolocation.model.freezed.dart';
part 'geolocation.model.g.dart';

@freezed
abstract class GeolocationModel with _$GeolocationModel{
  const GeolocationModel._();

  const factory GeolocationModel({
    required double latitude,
    required double longitude,
  }) = _GeolocationModel;

  static double _toDouble(dynamic value) {
    return switch(value.runtimeType){
      double => value,
      int => (value as int).toDouble(),
      String => double.parse((value as String)),
      _ => double.tryParse(value)
    };
  }

  factory GeolocationModel.fromJson(Map<String, dynamic> data) => GeolocationModel(
    latitude: _toDouble(data['lat']), 
    longitude: _toDouble(data['long'])
  );
}