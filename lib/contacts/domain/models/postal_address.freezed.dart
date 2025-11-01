// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postal_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostalAddress {

 String get formattedAddress; String get city; String get country; String get neighborhood; String get poBox; String get postCode; String get region; String get street; String get label; bool get isPrimary;
/// Create a copy of PostalAddress
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostalAddressCopyWith<PostalAddress> get copyWith => _$PostalAddressCopyWithImpl<PostalAddress>(this as PostalAddress, _$identity);

  /// Serializes this PostalAddress to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostalAddress&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.poBox, poBox) || other.poBox == poBox)&&(identical(other.postCode, postCode) || other.postCode == postCode)&&(identical(other.region, region) || other.region == region)&&(identical(other.street, street) || other.street == street)&&(identical(other.label, label) || other.label == label)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,formattedAddress,city,country,neighborhood,poBox,postCode,region,street,label,isPrimary);

@override
String toString() {
  return 'PostalAddress(formattedAddress: $formattedAddress, city: $city, country: $country, neighborhood: $neighborhood, poBox: $poBox, postCode: $postCode, region: $region, street: $street, label: $label, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class $PostalAddressCopyWith<$Res>  {
  factory $PostalAddressCopyWith(PostalAddress value, $Res Function(PostalAddress) _then) = _$PostalAddressCopyWithImpl;
@useResult
$Res call({
 String formattedAddress, String city, String country, String neighborhood, String poBox, String postCode, String region, String street, String label, bool isPrimary
});




}
/// @nodoc
class _$PostalAddressCopyWithImpl<$Res>
    implements $PostalAddressCopyWith<$Res> {
  _$PostalAddressCopyWithImpl(this._self, this._then);

  final PostalAddress _self;
  final $Res Function(PostalAddress) _then;

/// Create a copy of PostalAddress
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? formattedAddress = null,Object? city = null,Object? country = null,Object? neighborhood = null,Object? poBox = null,Object? postCode = null,Object? region = null,Object? street = null,Object? label = null,Object? isPrimary = null,}) {
  return _then(_self.copyWith(
formattedAddress: null == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,poBox: null == poBox ? _self.poBox : poBox // ignore: cast_nullable_to_non_nullable
as String,postCode: null == postCode ? _self.postCode : postCode // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PostalAddress].
extension PostalAddressPatterns on PostalAddress {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostalAddress value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostalAddress() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostalAddress value)  $default,){
final _that = this;
switch (_that) {
case _PostalAddress():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostalAddress value)?  $default,){
final _that = this;
switch (_that) {
case _PostalAddress() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String formattedAddress,  String city,  String country,  String neighborhood,  String poBox,  String postCode,  String region,  String street,  String label,  bool isPrimary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostalAddress() when $default != null:
return $default(_that.formattedAddress,_that.city,_that.country,_that.neighborhood,_that.poBox,_that.postCode,_that.region,_that.street,_that.label,_that.isPrimary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String formattedAddress,  String city,  String country,  String neighborhood,  String poBox,  String postCode,  String region,  String street,  String label,  bool isPrimary)  $default,) {final _that = this;
switch (_that) {
case _PostalAddress():
return $default(_that.formattedAddress,_that.city,_that.country,_that.neighborhood,_that.poBox,_that.postCode,_that.region,_that.street,_that.label,_that.isPrimary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String formattedAddress,  String city,  String country,  String neighborhood,  String poBox,  String postCode,  String region,  String street,  String label,  bool isPrimary)?  $default,) {final _that = this;
switch (_that) {
case _PostalAddress() when $default != null:
return $default(_that.formattedAddress,_that.city,_that.country,_that.neighborhood,_that.poBox,_that.postCode,_that.region,_that.street,_that.label,_that.isPrimary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostalAddress implements PostalAddress {
  const _PostalAddress({this.formattedAddress = '', this.city = '', this.country = '', this.neighborhood = '', this.poBox = '', this.postCode = '', this.region = '', this.street = '', this.label = '', this.isPrimary = false});
  factory _PostalAddress.fromJson(Map<String, dynamic> json) => _$PostalAddressFromJson(json);

@override@JsonKey() final  String formattedAddress;
@override@JsonKey() final  String city;
@override@JsonKey() final  String country;
@override@JsonKey() final  String neighborhood;
@override@JsonKey() final  String poBox;
@override@JsonKey() final  String postCode;
@override@JsonKey() final  String region;
@override@JsonKey() final  String street;
@override@JsonKey() final  String label;
@override@JsonKey() final  bool isPrimary;

/// Create a copy of PostalAddress
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostalAddressCopyWith<_PostalAddress> get copyWith => __$PostalAddressCopyWithImpl<_PostalAddress>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostalAddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostalAddress&&(identical(other.formattedAddress, formattedAddress) || other.formattedAddress == formattedAddress)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.poBox, poBox) || other.poBox == poBox)&&(identical(other.postCode, postCode) || other.postCode == postCode)&&(identical(other.region, region) || other.region == region)&&(identical(other.street, street) || other.street == street)&&(identical(other.label, label) || other.label == label)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,formattedAddress,city,country,neighborhood,poBox,postCode,region,street,label,isPrimary);

@override
String toString() {
  return 'PostalAddress(formattedAddress: $formattedAddress, city: $city, country: $country, neighborhood: $neighborhood, poBox: $poBox, postCode: $postCode, region: $region, street: $street, label: $label, isPrimary: $isPrimary)';
}


}

/// @nodoc
abstract mixin class _$PostalAddressCopyWith<$Res> implements $PostalAddressCopyWith<$Res> {
  factory _$PostalAddressCopyWith(_PostalAddress value, $Res Function(_PostalAddress) _then) = __$PostalAddressCopyWithImpl;
@override @useResult
$Res call({
 String formattedAddress, String city, String country, String neighborhood, String poBox, String postCode, String region, String street, String label, bool isPrimary
});




}
/// @nodoc
class __$PostalAddressCopyWithImpl<$Res>
    implements _$PostalAddressCopyWith<$Res> {
  __$PostalAddressCopyWithImpl(this._self, this._then);

  final _PostalAddress _self;
  final $Res Function(_PostalAddress) _then;

/// Create a copy of PostalAddress
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? formattedAddress = null,Object? city = null,Object? country = null,Object? neighborhood = null,Object? poBox = null,Object? postCode = null,Object? region = null,Object? street = null,Object? label = null,Object? isPrimary = null,}) {
  return _then(_PostalAddress(
formattedAddress: null == formattedAddress ? _self.formattedAddress : formattedAddress // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,poBox: null == poBox ? _self.poBox : poBox // ignore: cast_nullable_to_non_nullable
as String,postCode: null == postCode ? _self.postCode : postCode // ignore: cast_nullable_to_non_nullable
as String,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
