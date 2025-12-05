import 'dart:math';

import 'package:fakestore/features/data/models/product/product.model.dart';
import 'package:fakestore/core/dio/dio.dart';
import 'package:fakestore/features/domain/blueprints/product.dart';

class ProductRepository implements ProductRepoBlueprint {
    @override
    Future<List<ProductModel>> fetchAllProducts() async {
      final response = await dio.get(
        "/products",
      );
      
      final data = response.data;

      final List<ProductModel> productList = (data as List<dynamic>).map(
        (item) => ProductModel.fromJson(item)
      ).toList();

      return productList;
    }

    @override
    Future<ProductModel> fetchProductById(int id) async {
      final response = await dio.get(
        "/products/$id",
      );

      return ProductModel.fromJson(response.data);
    }

    @override
    Future<void> uploadProduct(Map<String, dynamic> data) async {
      final response = await dio.post(
        '/products',
        data: {
          "id": 69,
          "title": data['title'],
          "price": data['price'],
          "description": data['description'],
          "category": data['category'],
          "image": data['imageUrl'],
        }
      );

      print(response.data);
    }
}