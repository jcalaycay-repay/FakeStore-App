// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NameModel {

 String get firstname; String get lastname;
/// Create a copy of NameModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameModelCopyWith<NameModel> get copyWith => _$NameModelCopyWithImpl<NameModel>(this as NameModel, _$identity);

  /// Serializes this NameModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NameModel&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstname,lastname);

@override
String toString() {
  return 'NameModel(firstname: $firstname, lastname: $lastname)';
}


}

/// @nodoc
abstract mixin class $NameModelCopyWith<$Res>  {
  factory $NameModelCopyWith(NameModel value, $Res Function(NameModel) _then) = _$NameModelCopyWithImpl;
@useResult
$Res call({
 String firstname, String lastname
});




}
/// @nodoc
class _$NameModelCopyWithImpl<$Res>
    implements $NameModelCopyWith<$Res> {
  _$NameModelCopyWithImpl(this._self, this._then);

  final NameModel _self;
  final $Res Function(NameModel) _then;

/// Create a copy of NameModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstname = null,Object? lastname = null,}) {
  return _then(_self.copyWith(
firstname: null == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String,lastname: null == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NameModel].
extension NameModelPatterns on NameModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NameModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NameModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NameModel value)  $default,){
final _that = this;
switch (_that) {
case _NameModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NameModel value)?  $default,){
final _that = this;
switch (_that) {
case _NameModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstname,  String lastname)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NameModel() when $default != null:
return $default(_that.firstname,_that.lastname);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstname,  String lastname)  $default,) {final _that = this;
switch (_that) {
case _NameModel():
return $default(_that.firstname,_that.lastname);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstname,  String lastname)?  $default,) {final _that = this;
switch (_that) {
case _NameModel() when $default != null:
return $default(_that.firstname,_that.lastname);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NameModel extends NameModel {
  const _NameModel({required this.firstname, required this.lastname}): super._();
  factory _NameModel.fromJson(Map<String, dynamic> json) => _$NameModelFromJson(json);

@override final  String firstname;
@override final  String lastname;

/// Create a copy of NameModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameModelCopyWith<_NameModel> get copyWith => __$NameModelCopyWithImpl<_NameModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NameModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NameModel&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstname,lastname);

@override
String toString() {
  return 'NameModel(firstname: $firstname, lastname: $lastname)';
}


}

/// @nodoc
abstract mixin class _$NameModelCopyWith<$Res> implements $NameModelCopyWith<$Res> {
  factory _$NameModelCopyWith(_NameModel value, $Res Function(_NameModel) _then) = __$NameModelCopyWithImpl;
@override @useResult
$Res call({
 String firstname, String lastname
});




}
/// @nodoc
class __$NameModelCopyWithImpl<$Res>
    implements _$NameModelCopyWith<$Res> {
  __$NameModelCopyWithImpl(this._self, this._then);

  final _NameModel _self;
  final $Res Function(_NameModel) _then;

/// Create a copy of NameModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstname = null,Object? lastname = null,}) {
  return _then(_NameModel(
firstname: null == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String,lastname: null == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
