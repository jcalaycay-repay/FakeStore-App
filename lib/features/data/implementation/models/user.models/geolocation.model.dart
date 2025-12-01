import 'package:fakestore/features/domain/models/geolocation.model.dart';

class Geolocation extends GeolocationModel {
  const Geolocation({
    required super.latitude,
    required super.longitude,
  });

  factory Geolocation.fromJson(Map<String, dynamic> data) => Geolocation(
    latitude: double.parse(data["lat"]), 
    longitude: double.parse(data["long"])
  );
}