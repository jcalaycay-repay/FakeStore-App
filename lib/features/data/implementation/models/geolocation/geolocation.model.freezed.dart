// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geolocation.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeolocationModel {

@JsonKey(name: "lat") double get latitude;@JsonKey(name: 'long') double get longitude;
/// Create a copy of GeolocationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeolocationModelCopyWith<GeolocationModel> get copyWith => _$GeolocationModelCopyWithImpl<GeolocationModel>(this as GeolocationModel, _$identity);

  /// Serializes this GeolocationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeolocationModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'GeolocationModel(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $GeolocationModelCopyWith<$Res>  {
  factory $GeolocationModelCopyWith(GeolocationModel value, $Res Function(GeolocationModel) _then) = _$GeolocationModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "lat") double latitude,@JsonKey(name: 'long') double longitude
});




}
/// @nodoc
class _$GeolocationModelCopyWithImpl<$Res>
    implements $GeolocationModelCopyWith<$Res> {
  _$GeolocationModelCopyWithImpl(this._self, this._then);

  final GeolocationModel _self;
  final $Res Function(GeolocationModel) _then;

/// Create a copy of GeolocationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [GeolocationModel].
extension GeolocationModelPatterns on GeolocationModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeolocationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeolocationModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeolocationModel value)  $default,){
final _that = this;
switch (_that) {
case _GeolocationModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeolocationModel value)?  $default,){
final _that = this;
switch (_that) {
case _GeolocationModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "lat")  double latitude, @JsonKey(name: 'long')  double longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeolocationModel() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "lat")  double latitude, @JsonKey(name: 'long')  double longitude)  $default,) {final _that = this;
switch (_that) {
case _GeolocationModel():
return $default(_that.latitude,_that.longitude);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "lat")  double latitude, @JsonKey(name: 'long')  double longitude)?  $default,) {final _that = this;
switch (_that) {
case _GeolocationModel() when $default != null:
return $default(_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeolocationModel extends GeolocationModel {
  const _GeolocationModel({@JsonKey(name: "lat") required this.latitude, @JsonKey(name: 'long') required this.longitude}): super._();
  factory _GeolocationModel.fromJson(Map<String, dynamic> json) => _$GeolocationModelFromJson(json);

@override@JsonKey(name: "lat") final  double latitude;
@override@JsonKey(name: 'long') final  double longitude;

/// Create a copy of GeolocationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeolocationModelCopyWith<_GeolocationModel> get copyWith => __$GeolocationModelCopyWithImpl<_GeolocationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeolocationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeolocationModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude);

@override
String toString() {
  return 'GeolocationModel(latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$GeolocationModelCopyWith<$Res> implements $GeolocationModelCopyWith<$Res> {
  factory _$GeolocationModelCopyWith(_GeolocationModel value, $Res Function(_GeolocationModel) _then) = __$GeolocationModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "lat") double latitude,@JsonKey(name: 'long') double longitude
});




}
/// @nodoc
class __$GeolocationModelCopyWithImpl<$Res>
    implements _$GeolocationModelCopyWith<$Res> {
  __$GeolocationModelCopyWithImpl(this._self, this._then);

  final _GeolocationModel _self;
  final $Res Function(_GeolocationModel) _then;

/// Create a copy of GeolocationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,}) {
  return _then(_GeolocationModel(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
