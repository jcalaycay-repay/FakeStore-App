import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating.model.freezed.dart';
part 'rating.model.g.dart';

@freezed
abstract class RatingModel with _$RatingModel{

  const factory RatingModel({
    required double rate,
    required int count,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> data) => _$RatingModelFromJson(data);

}