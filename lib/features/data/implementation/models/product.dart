import 'package:fakestore/features/domain/models/product.dart';

class Product extends ProductModel {
  const Product({
    required super.id,
    required super.name,
    required super.price,
    required super.description,
    required super.imageUrl,
  });


  factory Product.fromJson(Map<String, dynamic> data) => Product(
    id: data["id"], 
    name: data["title"], 
    price: double.parse(data["price"].toString()), 
    description: data["description"], 
    imageUrl: data["image"],
  );
}