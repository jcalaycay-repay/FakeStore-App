import 'dart:convert';

import 'package:fakestore/features/data/implementation/models/user.models/geolocation.model.dart';
import 'package:fakestore/features/domain/models/address.model.dart';

class Address extends AddressModel  {
  Address({
    super.unitNumber,
    required super.street,
    required super.city,
    required super.zipCode,
    super.location,
  });

  factory Address.fromJson(Map<String, dynamic> data) => Address(
    unitNumber: data["number"].toString(),
    street: data["street"], 
    city: data["city"], 
    zipCode: data["zipcode"],
    location: Geolocation.fromJson(
      data["geolocation"]
    ),
  );

  String get complete => "$unitNumber, $street, $city, $zipCode";
}
