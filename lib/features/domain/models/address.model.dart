import 'package:fakestore/features/data/implementation/models/user.models/geolocation.model.dart';

class AddressModel {
  final String? unitNumber;
  final String street;
  final String zipCode;
  final String city;
  final Geolocation? location;


  const AddressModel({
    this.unitNumber,
    required this.street,
    required this.zipCode,
    required this.city,
    this.location
  });
}