
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.item.model.freezed.dart';
part 'cart.item.model.g.dart';

@freezed
abstract class CartItem with _$CartItem {
  const CartItem._();

  const factory CartItem({
    required int id,
    required String name,
    required String imageUrl,
    required double price, 
    @Default(1) int quantity,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> data) => _$CartItemFromJson(data);

}