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
}