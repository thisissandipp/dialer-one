// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Contact {

 String get id; String get displayName;@Uint8ListConverter() Uint8List? get displayPhoto;@SafeMapConverter() ContactName get contactName;@SafeMapConverter() List<PhoneNumber> get phoneNumbers;@SafeMapConverter() List<ContactEmail> get contactEmails;@SafeMapConverter() List<PostalAddress> get postalAddresses;
/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactCopyWith<Contact> get copyWith => _$ContactCopyWithImpl<Contact>(this as Contact, _$identity);

  /// Serializes this Contact to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Contact&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&const DeepCollectionEquality().equals(other.displayPhoto, displayPhoto)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&const DeepCollectionEquality().equals(other.phoneNumbers, phoneNumbers)&&const DeepCollectionEquality().equals(other.contactEmails, contactEmails)&&const DeepCollectionEquality().equals(other.postalAddresses, postalAddresses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,const DeepCollectionEquality().hash(displayPhoto),contactName,const DeepCollectionEquality().hash(phoneNumbers),const DeepCollectionEquality().hash(contactEmails),const DeepCollectionEquality().hash(postalAddresses));

@override
String toString() {
  return 'Contact(id: $id, displayName: $displayName, displayPhoto: $displayPhoto, contactName: $contactName, phoneNumbers: $phoneNumbers, contactEmails: $contactEmails, postalAddresses: $postalAddresses)';
}


}

/// @nodoc
abstract mixin class $ContactCopyWith<$Res>  {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) _then) = _$ContactCopyWithImpl;
@useResult
$Res call({
 String id, String displayName,@Uint8ListConverter() Uint8List? displayPhoto,@SafeMapConverter() ContactName contactName,@SafeMapConverter() List<PhoneNumber> phoneNumbers,@SafeMapConverter() List<ContactEmail> contactEmails,@SafeMapConverter() List<PostalAddress> postalAddresses
});


$ContactNameCopyWith<$Res> get contactName;

}
/// @nodoc
class _$ContactCopyWithImpl<$Res>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._self, this._then);

  final Contact _self;
  final $Res Function(Contact) _then;

/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? displayName = null,Object? displayPhoto = freezed,Object? contactName = null,Object? phoneNumbers = null,Object? contactEmails = null,Object? postalAddresses = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,displayPhoto: freezed == displayPhoto ? _self.displayPhoto : displayPhoto // ignore: cast_nullable_to_non_nullable
as Uint8List?,contactName: null == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as ContactName,phoneNumbers: null == phoneNumbers ? _self.phoneNumbers : phoneNumbers // ignore: cast_nullable_to_non_nullable
as List<PhoneNumber>,contactEmails: null == contactEmails ? _self.contactEmails : contactEmails // ignore: cast_nullable_to_non_nullable
as List<ContactEmail>,postalAddresses: null == postalAddresses ? _self.postalAddresses : postalAddresses // ignore: cast_nullable_to_non_nullable
as List<PostalAddress>,
  ));
}
/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactNameCopyWith<$Res> get contactName {
  
  return $ContactNameCopyWith<$Res>(_self.contactName, (value) {
    return _then(_self.copyWith(contactName: value));
  });
}
}


/// Adds pattern-matching-related methods to [Contact].
extension ContactPatterns on Contact {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Contact value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Contact() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Contact value)  $default,){
final _that = this;
switch (_that) {
case _Contact():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Contact value)?  $default,){
final _that = this;
switch (_that) {
case _Contact() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String displayName, @Uint8ListConverter()  Uint8List? displayPhoto, @SafeMapConverter()  ContactName contactName, @SafeMapConverter()  List<PhoneNumber> phoneNumbers, @SafeMapConverter()  List<ContactEmail> contactEmails, @SafeMapConverter()  List<PostalAddress> postalAddresses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Contact() when $default != null:
return $default(_that.id,_that.displayName,_that.displayPhoto,_that.contactName,_that.phoneNumbers,_that.contactEmails,_that.postalAddresses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String displayName, @Uint8ListConverter()  Uint8List? displayPhoto, @SafeMapConverter()  ContactName contactName, @SafeMapConverter()  List<PhoneNumber> phoneNumbers, @SafeMapConverter()  List<ContactEmail> contactEmails, @SafeMapConverter()  List<PostalAddress> postalAddresses)  $default,) {final _that = this;
switch (_that) {
case _Contact():
return $default(_that.id,_that.displayName,_that.displayPhoto,_that.contactName,_that.phoneNumbers,_that.contactEmails,_that.postalAddresses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String displayName, @Uint8ListConverter()  Uint8List? displayPhoto, @SafeMapConverter()  ContactName contactName, @SafeMapConverter()  List<PhoneNumber> phoneNumbers, @SafeMapConverter()  List<ContactEmail> contactEmails, @SafeMapConverter()  List<PostalAddress> postalAddresses)?  $default,) {final _that = this;
switch (_that) {
case _Contact() when $default != null:
return $default(_that.id,_that.displayName,_that.displayPhoto,_that.contactName,_that.phoneNumbers,_that.contactEmails,_that.postalAddresses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Contact implements Contact {
  const _Contact({this.id = '', this.displayName = '', @Uint8ListConverter() this.displayPhoto, @SafeMapConverter() this.contactName = const ContactName(), @SafeMapConverter() final  List<PhoneNumber> phoneNumbers = const [], @SafeMapConverter() final  List<ContactEmail> contactEmails = const [], @SafeMapConverter() final  List<PostalAddress> postalAddresses = const []}): _phoneNumbers = phoneNumbers,_contactEmails = contactEmails,_postalAddresses = postalAddresses;
  factory _Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String displayName;
@override@Uint8ListConverter() final  Uint8List? displayPhoto;
@override@JsonKey()@SafeMapConverter() final  ContactName contactName;
 final  List<PhoneNumber> _phoneNumbers;
@override@JsonKey()@SafeMapConverter() List<PhoneNumber> get phoneNumbers {
  if (_phoneNumbers is EqualUnmodifiableListView) return _phoneNumbers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_phoneNumbers);
}

 final  List<ContactEmail> _contactEmails;
@override@JsonKey()@SafeMapConverter() List<ContactEmail> get contactEmails {
  if (_contactEmails is EqualUnmodifiableListView) return _contactEmails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contactEmails);
}

 final  List<PostalAddress> _postalAddresses;
@override@JsonKey()@SafeMapConverter() List<PostalAddress> get postalAddresses {
  if (_postalAddresses is EqualUnmodifiableListView) return _postalAddresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_postalAddresses);
}


/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactCopyWith<_Contact> get copyWith => __$ContactCopyWithImpl<_Contact>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Contact&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&const DeepCollectionEquality().equals(other.displayPhoto, displayPhoto)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&const DeepCollectionEquality().equals(other._phoneNumbers, _phoneNumbers)&&const DeepCollectionEquality().equals(other._contactEmails, _contactEmails)&&const DeepCollectionEquality().equals(other._postalAddresses, _postalAddresses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,const DeepCollectionEquality().hash(displayPhoto),contactName,const DeepCollectionEquality().hash(_phoneNumbers),const DeepCollectionEquality().hash(_contactEmails),const DeepCollectionEquality().hash(_postalAddresses));

@override
String toString() {
  return 'Contact(id: $id, displayName: $displayName, displayPhoto: $displayPhoto, contactName: $contactName, phoneNumbers: $phoneNumbers, contactEmails: $contactEmails, postalAddresses: $postalAddresses)';
}


}

/// @nodoc
abstract mixin class _$ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$ContactCopyWith(_Contact value, $Res Function(_Contact) _then) = __$ContactCopyWithImpl;
@override @useResult
$Res call({
 String id, String displayName,@Uint8ListConverter() Uint8List? displayPhoto,@SafeMapConverter() ContactName contactName,@SafeMapConverter() List<PhoneNumber> phoneNumbers,@SafeMapConverter() List<ContactEmail> contactEmails,@SafeMapConverter() List<PostalAddress> postalAddresses
});


@override $ContactNameCopyWith<$Res> get contactName;

}
/// @nodoc
class __$ContactCopyWithImpl<$Res>
    implements _$ContactCopyWith<$Res> {
  __$ContactCopyWithImpl(this._self, this._then);

  final _Contact _self;
  final $Res Function(_Contact) _then;

/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? displayName = null,Object? displayPhoto = freezed,Object? contactName = null,Object? phoneNumbers = null,Object? contactEmails = null,Object? postalAddresses = null,}) {
  return _then(_Contact(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,displayPhoto: freezed == displayPhoto ? _self.displayPhoto : displayPhoto // ignore: cast_nullable_to_non_nullable
as Uint8List?,contactName: null == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as ContactName,phoneNumbers: null == phoneNumbers ? _self._phoneNumbers : phoneNumbers // ignore: cast_nullable_to_non_nullable
as List<PhoneNumber>,contactEmails: null == contactEmails ? _self._contactEmails : contactEmails // ignore: cast_nullable_to_non_nullable
as List<ContactEmail>,postalAddresses: null == postalAddresses ? _self._postalAddresses : postalAddresses // ignore: cast_nullable_to_non_nullable
as List<PostalAddress>,
  ));
}

/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactNameCopyWith<$Res> get contactName {
  
  return $ContactNameCopyWith<$Res>(_self.contactName, (value) {
    return _then(_self.copyWith(contactName: value));
  });
}
}

// dart format on
