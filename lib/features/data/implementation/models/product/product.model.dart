import 'package:fakestore/features/data/implementation/models/rating/rating.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.model.freezed.dart';
part 'product.model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
    required int id,
    @JsonKey(name: 'title') required String name,
    required double price,
    required String description,
    @JsonKey(name: 'image') required String imageUrl,
    required RatingModel rating,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> data) => _$ProductModelFromJson(data);
}