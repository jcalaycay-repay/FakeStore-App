import 'package:fakestore/features/data/implementation/models/product.model.dart';

abstract class ProductRepoBlueprint {
  Future<List<Product>> fetchAllProducts();

  Future<Product> fetchProductById(int id);
}