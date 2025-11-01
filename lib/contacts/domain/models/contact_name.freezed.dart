// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactName {

 String get firstName; String get lastName; String get middleName; String get prefix; String get suffix; String get phoneticFirstName; String get phoneticLastName; String get phoneticMiddleName;
/// Create a copy of ContactName
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactNameCopyWith<ContactName> get copyWith => _$ContactNameCopyWithImpl<ContactName>(this as ContactName, _$identity);

  /// Serializes this ContactName to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactName&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.suffix, suffix) || other.suffix == suffix)&&(identical(other.phoneticFirstName, phoneticFirstName) || other.phoneticFirstName == phoneticFirstName)&&(identical(other.phoneticLastName, phoneticLastName) || other.phoneticLastName == phoneticLastName)&&(identical(other.phoneticMiddleName, phoneticMiddleName) || other.phoneticMiddleName == phoneticMiddleName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,middleName,prefix,suffix,phoneticFirstName,phoneticLastName,phoneticMiddleName);

@override
String toString() {
  return 'ContactName(firstName: $firstName, lastName: $lastName, middleName: $middleName, prefix: $prefix, suffix: $suffix, phoneticFirstName: $phoneticFirstName, phoneticLastName: $phoneticLastName, phoneticMiddleName: $phoneticMiddleName)';
}


}

/// @nodoc
abstract mixin class $ContactNameCopyWith<$Res>  {
  factory $ContactNameCopyWith(ContactName value, $Res Function(ContactName) _then) = _$ContactNameCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String middleName, String prefix, String suffix, String phoneticFirstName, String phoneticLastName, String phoneticMiddleName
});




}
/// @nodoc
class _$ContactNameCopyWithImpl<$Res>
    implements $ContactNameCopyWith<$Res> {
  _$ContactNameCopyWithImpl(this._self, this._then);

  final ContactName _self;
  final $Res Function(ContactName) _then;

/// Create a copy of ContactName
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? middleName = null,Object? prefix = null,Object? suffix = null,Object? phoneticFirstName = null,Object? phoneticLastName = null,Object? phoneticMiddleName = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,middleName: null == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String,prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String,suffix: null == suffix ? _self.suffix : suffix // ignore: cast_nullable_to_non_nullable
as String,phoneticFirstName: null == phoneticFirstName ? _self.phoneticFirstName : phoneticFirstName // ignore: cast_nullable_to_non_nullable
as String,phoneticLastName: null == phoneticLastName ? _self.phoneticLastName : phoneticLastName // ignore: cast_nullable_to_non_nullable
as String,phoneticMiddleName: null == phoneticMiddleName ? _self.phoneticMiddleName : phoneticMiddleName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ContactName].
extension ContactNamePatterns on ContactName {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactName value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactName() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactName value)  $default,){
final _that = this;
switch (_that) {
case _ContactName():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactName value)?  $default,){
final _that = this;
switch (_that) {
case _ContactName() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String middleName,  String prefix,  String suffix,  String phoneticFirstName,  String phoneticLastName,  String phoneticMiddleName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactName() when $default != null:
return $default(_that.firstName,_that.lastName,_that.middleName,_that.prefix,_that.suffix,_that.phoneticFirstName,_that.phoneticLastName,_that.phoneticMiddleName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String middleName,  String prefix,  String suffix,  String phoneticFirstName,  String phoneticLastName,  String phoneticMiddleName)  $default,) {final _that = this;
switch (_that) {
case _ContactName():
return $default(_that.firstName,_that.lastName,_that.middleName,_that.prefix,_that.suffix,_that.phoneticFirstName,_that.phoneticLastName,_that.phoneticMiddleName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String lastName,  String middleName,  String prefix,  String suffix,  String phoneticFirstName,  String phoneticLastName,  String phoneticMiddleName)?  $default,) {final _that = this;
switch (_that) {
case _ContactName() when $default != null:
return $default(_that.firstName,_that.lastName,_that.middleName,_that.prefix,_that.suffix,_that.phoneticFirstName,_that.phoneticLastName,_that.phoneticMiddleName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContactName implements ContactName {
  const _ContactName({this.firstName = '', this.lastName = '', this.middleName = '', this.prefix = '', this.suffix = '', this.phoneticFirstName = '', this.phoneticLastName = '', this.phoneticMiddleName = ''});
  factory _ContactName.fromJson(Map<String, dynamic> json) => _$ContactNameFromJson(json);

@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
@override@JsonKey() final  String middleName;
@override@JsonKey() final  String prefix;
@override@JsonKey() final  String suffix;
@override@JsonKey() final  String phoneticFirstName;
@override@JsonKey() final  String phoneticLastName;
@override@JsonKey() final  String phoneticMiddleName;

/// Create a copy of ContactName
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactNameCopyWith<_ContactName> get copyWith => __$ContactNameCopyWithImpl<_ContactName>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactNameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactName&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.suffix, suffix) || other.suffix == suffix)&&(identical(other.phoneticFirstName, phoneticFirstName) || other.phoneticFirstName == phoneticFirstName)&&(identical(other.phoneticLastName, phoneticLastName) || other.phoneticLastName == phoneticLastName)&&(identical(other.phoneticMiddleName, phoneticMiddleName) || other.phoneticMiddleName == phoneticMiddleName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,middleName,prefix,suffix,phoneticFirstName,phoneticLastName,phoneticMiddleName);

@override
String toString() {
  return 'ContactName(firstName: $firstName, lastName: $lastName, middleName: $middleName, prefix: $prefix, suffix: $suffix, phoneticFirstName: $phoneticFirstName, phoneticLastName: $phoneticLastName, phoneticMiddleName: $phoneticMiddleName)';
}


}

/// @nodoc
abstract mixin class _$ContactNameCopyWith<$Res> implements $ContactNameCopyWith<$Res> {
  factory _$ContactNameCopyWith(_ContactName value, $Res Function(_ContactName) _then) = __$ContactNameCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, String middleName, String prefix, String suffix, String phoneticFirstName, String phoneticLastName, String phoneticMiddleName
});




}
/// @nodoc
class __$ContactNameCopyWithImpl<$Res>
    implements _$ContactNameCopyWith<$Res> {
  __$ContactNameCopyWithImpl(this._self, this._then);

  final _ContactName _self;
  final $Res Function(_ContactName) _then;

/// Create a copy of ContactName
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? middleName = null,Object? prefix = null,Object? suffix = null,Object? phoneticFirstName = null,Object? phoneticLastName = null,Object? phoneticMiddleName = null,}) {
  return _then(_ContactName(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,middleName: null == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String,prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String,suffix: null == suffix ? _self.suffix : suffix // ignore: cast_nullable_to_non_nullable
as String,phoneticFirstName: null == phoneticFirstName ? _self.phoneticFirstName : phoneticFirstName // ignore: cast_nullable_to_non_nullable
as String,phoneticLastName: null == phoneticLastName ? _self.phoneticLastName : phoneticLastName // ignore: cast_nullable_to_non_nullable
as String,phoneticMiddleName: null == phoneticMiddleName ? _self.phoneticMiddleName : phoneticMiddleName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
