
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.item.model.freezed.dart';
part 'cart.item.model.g.dart';

@unfreezed
abstract class CartItem with _$CartItem {
  const CartItem._();

  const factory CartItem({
    required final int id,
    required final String name,
    required final String category,
    required final String imageUrl,
    required final double price, 
    @Default(false) bool checked,
    @Default(1) int quantity,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> data) => _$CartItemFromJson(data);

}