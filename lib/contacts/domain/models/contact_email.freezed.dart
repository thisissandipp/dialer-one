// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_email.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactEmail {

 String get address; String get label; bool get isPrimary;
/// Create a copy of ContactEmail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactEmailCopyWith<ContactEmail> get copyWith => _$ContactEmailCopyWithImpl<ContactEmail>(this as ContactEmail, _$identity);

  /// Serializes this ContactEmail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactEmail&&(identical(other.address, address) || other.address == address)&&(identical(other.label, label) || other.label == label)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,label,isPrimary);

@override
String toString() {
  return 'ContactEmail(address: $address, label: $label, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class $ContactEmailCopyWith<$Res>  {
  factory $ContactEmailCopyWith(ContactEmail value, $Res Function(ContactEmail) _then) = _$ContactEmailCopyWithImpl;
@useResult
$Res call({
 String address, String label, bool isPrimary
});




}
/// @nodoc
class _$ContactEmailCopyWithImpl<$Res>
    implements $ContactEmailCopyWith<$Res> {
  _$ContactEmailCopyWithImpl(this._self, this._then);

  final ContactEmail _self;
  final $Res Function(ContactEmail) _then;

/// Create a copy of ContactEmail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? label = null,Object? isPrimary = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ContactEmail].
extension ContactEmailPatterns on ContactEmail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactEmail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactEmail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactEmail value)  $default,){
final _that = this;
switch (_that) {
case _ContactEmail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactEmail value)?  $default,){
final _that = this;
switch (_that) {
case _ContactEmail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String address,  String label,  bool isPrimary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactEmail() when $default != null:
return $default(_that.address,_that.label,_that.isPrimary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String address,  String label,  bool isPrimary)  $default,) {final _that = this;
switch (_that) {
case _ContactEmail():
return $default(_that.address,_that.label,_that.isPrimary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String address,  String label,  bool isPrimary)?  $default,) {final _that = this;
switch (_that) {
case _ContactEmail() when $default != null:
return $default(_that.address,_that.label,_that.isPrimary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContactEmail implements ContactEmail {
  const _ContactEmail({this.address = '', this.label = '', this.isPrimary = false});
  factory _ContactEmail.fromJson(Map<String, dynamic> json) => _$ContactEmailFromJson(json);

@override@JsonKey() final  String address;
@override@JsonKey() final  String label;
@override@JsonKey() final  bool isPrimary;

/// Create a copy of ContactEmail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactEmailCopyWith<_ContactEmail> get copyWith => __$ContactEmailCopyWithImpl<_ContactEmail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactEmailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactEmail&&(identical(other.address, address) || other.address == address)&&(identical(other.label, label) || other.label == label)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,label,isPrimary);

@override
String toString() {
  return 'ContactEmail(address: $address, label: $label, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class _$ContactEmailCopyWith<$Res> implements $ContactEmailCopyWith<$Res> {
  factory _$ContactEmailCopyWith(_ContactEmail value, $Res Function(_ContactEmail) _then) = __$ContactEmailCopyWithImpl;
@override @useResult
$Res call({
 String address, String label, bool isPrimary
});




}
/// @nodoc
class __$ContactEmailCopyWithImpl<$Res>
    implements _$ContactEmailCopyWith<$Res> {
  __$ContactEmailCopyWithImpl(this._self, this._then);

  final _ContactEmail _self;
  final $Res Function(_ContactEmail) _then;

/// Create a copy of ContactEmail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? label = null,Object? isPrimary = null,}) {
  return _then(_ContactEmail(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
