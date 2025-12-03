import 'dart:convert';

import 'package:fakestore/core/local_storages/cache.dart';
import 'package:fakestore/features/data/models/cart_item/cart.item.model.dart';
import 'package:fakestore/features/data/models/product/product.model.dart';
import 'package:fakestore/features/domain/enums/storage.dart';

class CartRepository {

  Future<bool> add(ProductModel item, { int quantity = 1}) async {
    if(cartContains(item.id)) return false;

    final cartData = item.toCartData(quantity: quantity);

    return await NormalCache.setStringList( Storage.cart, [
      ...getCart, 
      jsonEncode(cartData.toJson())
    ]);

  }

  Future<(bool, String message)> removeItem(int id) async {
    final cart = getCart.map(
      (item) => jsonDecode(item)
    ).toList();
    final initialLength = cart.length;
    

    cart.removeWhere(
      (item) => id == item['id']
    );
    
    if(initialLength == cart.length) return (false, 'Item is not in the cart');

    return (true, 'Successfully removed from the cart');
  }

  List<String> get getCart => NormalCache.getStringList(Storage.cart) ?? [];

  Future<bool> updateCart(List<CartItem> cart) async {
    try {
      final deserializedCart = cart.map(
        (item) => jsonEncode(item.toJson())
      ).toList();

      print(deserializedCart);
      final success = await NormalCache.setStringList(Storage.cart, deserializedCart);

      return success;
    } catch (e) {
      return false;
    }
  }

  bool cartContains(int id) {
    final cart = getCart.map(
      (item) => jsonDecode(item)
    ).toList();
    
    cart.removeWhere(
      (item) => id != item['id']
    );

    return cart.isNotEmpty;
  }
}