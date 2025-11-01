import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';

/// Utility class to wrap the response.
@freezed
sealed class Response<T, E extends Exception> with _$Response<T, E> {
  /// Creates a successful [Response], completed with the specified [value].
  const factory Response.ok(T value) = Ok;
  /// Creates an error [Response], completed with the specified [error].
  const factory Response.error(E error) = Error;
}
