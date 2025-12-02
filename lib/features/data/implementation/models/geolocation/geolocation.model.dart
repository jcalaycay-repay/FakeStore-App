import 'package:freezed_annotation/freezed_annotation.dart';

part 'geolocation.model.freezed.dart';
part 'geolocation.model.g.dart';

@freezed
abstract class GeolocationModel with _$GeolocationModel{
  const GeolocationModel._();

  const factory GeolocationModel({
    @JsonKey(name: "lat") required double latitude,
    @JsonKey(name: 'long') required double longitude,
  }) = _GeolocationModel;

  

  factory GeolocationModel.fromJson(Map<String, dynamic> data) => _$GeolocationModelFromJson(data);
}