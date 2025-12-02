// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.item.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartItem _$CartItemFromJson(Map<String, dynamic> json) => _CartItem(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  category: json['category'] as String,
  imageUrl: json['imageUrl'] as String,
  price: (json['price'] as num).toDouble(),
  checked: json['checked'] as bool? ?? false,
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$CartItemToJson(_CartItem instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'category': instance.category,
  'imageUrl': instance.imageUrl,
  'price': instance.price,
  'checked': instance.checked,
  'quantity': instance.quantity,
};
