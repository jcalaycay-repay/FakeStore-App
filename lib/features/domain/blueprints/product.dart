import 'package:fakestore/features/data/implementation/freezed_models/product/product.model.dart';

abstract class ProductRepoBlueprint {
  Future<List<ProductModel>> fetchAllProducts();

  Future<ProductModel> fetchProductById(int id);
}