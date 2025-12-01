import 'package:fakestore/features/data/implementation/models/product.model.dart';
import 'package:fakestore/core/dio/dio.dart';
import 'package:fakestore/features/domain/blueprints/product.dart';

class ProductRepository implements ProductRepoBlueprint {
    @override
    Future<List<Product>> fetchAllProducts() async {
      final response = await dio.get(
        "/products",
      );
      
      final data = response.data;

      final List<Product> productList = (data as List<dynamic>).map(
        (item) => Product.fromJson(item)
      ).toList();

      return productList;
    }

    @override
    Future<Product> fetchProductById(int id) async {
      final response = await dio.get(
        "/products/$id",
      );

      return Product.fromJson(response.data);
    }
}