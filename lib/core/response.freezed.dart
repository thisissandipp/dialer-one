// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Response<T,E extends Exception> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Response<T, E>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Response<$T, $E>()';
}


}

/// @nodoc
class $ResponseCopyWith<T,E extends Exception,$Res>  {
$ResponseCopyWith(Response<T, E> _, $Res Function(Response<T, E>) __);
}


/// Adds pattern-matching-related methods to [Response].
extension ResponsePatterns<T,E extends Exception> on Response<T, E> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Ok<T, E> value)?  ok,TResult Function( Error<T, E> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Ok() when ok != null:
return ok(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Ok<T, E> value)  ok,required TResult Function( Error<T, E> value)  error,}){
final _that = this;
switch (_that) {
case Ok():
return ok(_that);case Error():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Ok<T, E> value)?  ok,TResult? Function( Error<T, E> value)?  error,}){
final _that = this;
switch (_that) {
case Ok() when ok != null:
return ok(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T value)?  ok,TResult Function( E error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Ok() when ok != null:
return ok(_that.value);case Error() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T value)  ok,required TResult Function( E error)  error,}) {final _that = this;
switch (_that) {
case Ok():
return ok(_that.value);case Error():
return error(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T value)?  ok,TResult? Function( E error)?  error,}) {final _that = this;
switch (_that) {
case Ok() when ok != null:
return ok(_that.value);case Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class Ok<T,E extends Exception> implements Response<T, E> {
  const Ok(this.value);
  

 final  T value;

/// Create a copy of Response
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OkCopyWith<T, E, Ok<T, E>> get copyWith => _$OkCopyWithImpl<T, E, Ok<T, E>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ok<T, E>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'Response<$T, $E>.ok(value: $value)';
}


}

/// @nodoc
abstract mixin class $OkCopyWith<T,E extends Exception,$Res> implements $ResponseCopyWith<T, E, $Res> {
  factory $OkCopyWith(Ok<T, E> value, $Res Function(Ok<T, E>) _then) = _$OkCopyWithImpl;
@useResult
$Res call({
 T value
});




}
/// @nodoc
class _$OkCopyWithImpl<T,E extends Exception,$Res>
    implements $OkCopyWith<T, E, $Res> {
  _$OkCopyWithImpl(this._self, this._then);

  final Ok<T, E> _self;
  final $Res Function(Ok<T, E>) _then;

/// Create a copy of Response
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(Ok<T, E>(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class Error<T,E extends Exception> implements Response<T, E> {
  const Error(this.error);
  

 final  E error;

/// Create a copy of Response
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<T, E, Error<T, E>> get copyWith => _$ErrorCopyWithImpl<T, E, Error<T, E>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error<T, E>&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'Response<$T, $E>.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<T,E extends Exception,$Res> implements $ResponseCopyWith<T, E, $Res> {
  factory $ErrorCopyWith(Error<T, E> value, $Res Function(Error<T, E>) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 E error
});




}
/// @nodoc
class _$ErrorCopyWithImpl<T,E extends Exception,$Res>
    implements $ErrorCopyWith<T, E, $Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error<T, E> _self;
  final $Res Function(Error<T, E>) _then;

/// Create a copy of Response
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(Error<T, E>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as E,
  ));
}


}

// dart format on
