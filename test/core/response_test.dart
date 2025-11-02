// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:one/core/core.dart';

void main() {
  group('Response', () {
    test('creates an ok response with value', () {
      final response = Response.ok(42);
      expect(response, isA<Ok<int, Exception>>());
      response.when(
        ok: (value) => expect(value, 42),
        error: (_) => fail('Should not be error'),
      );
    });

    test('creates an error response with exception', () {
      const error = FormatException('Invalid format');
      final response = Response<int, Exception>.error(error);
      expect(response, isA<Error<int, Exception>>());
      response.when(
        ok: (_) => fail('Should not be ok'),
        error: (err) => expect(err, error),
      );
    });

    test('ok and error are not equal', () {
      final ok = Response.ok('Success');
      final error = Response<int, Exception>.error(FormatException('Oops'));

      expect(ok, isNot(equals(error)));
    });

    test('supports equality for identical values', () {
      final r1 = Response.ok('Same');
      final r2 = Response.ok('Same');

      expect(r1, equals(r2));
    });
  });
}
