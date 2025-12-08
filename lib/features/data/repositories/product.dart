import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:fakestore/core/local_storages/cache.dart';
import 'package:fakestore/features/data/models/product/product.model.dart';
import 'package:fakestore/core/dio/dio.dart';
import 'package:fakestore/features/domain/blueprints/product.dart';
import 'package:fakestore/features/domain/enums/storage.dart';

class ProductRepository {
  Future<List<ProductModel>> fetchAllProducts() async {
    final response = await dio.get(
      "/products",
    );

    final data = response.data;

    final List<ProductModel> productList = (data as List<dynamic>)
        .map((item) => ProductModel.fromJson(item))
        .toList();

    return productList;
  }

  Future<ProductModel> fetchProductById(int id) async {
    final response = await dio.get(
      "/products/$id",
    );

    return ProductModel.fromJson(response.data);
  }

  Future<void> uploadProduct(Map<String, dynamic> data) async {
    final body = {
      "id": _randomizer,
      "title": data['title'],
      "price": double.parse(data['price']),
      "description": data['description'],
      "category": data['category'],
      "image": data['imageUrl'],
      'rating': {"rate": 0, "count": 0},
    };

    final response = await dio.post('/products', data: body);

    final list = NormalCache.getStringList(Storage.productListing);

    await NormalCache.setStringList(Storage.productListing, [
      ...(list ?? []),
      jsonEncode(body),
    ]);
  }

  void deleteProduct({int id = 1}) {
    NormalCache.remove(Storage.productListing);
  }

  List<ProductModel> getListing() {
    final List<String> locallyStoredListing =
        NormalCache.getStringList(Storage.productListing) ?? [];

    // print(locallyStoredListing.isEmpty);

    final parsedListing = locallyStoredListing
        .map((item) => ProductModel.fromJson(jsonDecode(item)))
        .toList();

    return parsedListing;
  }

  int get _randomizer => Random().nextInt(1000);
}
