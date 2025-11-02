import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:one/contacts/contacts.dart';
import 'package:one/core/core.dart';

class MockMethodChannel extends Mock implements MethodChannel {}

void main() {
  group('ContactsNativeDataSource', () {
    late MockMethodChannel mockChannel;
    late ContactsNativeDataSource dataSource;

    setUp(() {
      mockChannel = MockMethodChannel();
      dataSource = ContactsNativeDataSource(channel: mockChannel);
    });

    test('returns empty list when result is null', () async {
      when(
        () => mockChannel.invokeMethod<List<dynamic>>(AppChannel.getContacts),
      ).thenAnswer((_) async => null);

      final result = await dataSource.getContacts();

      expect(result, isEmpty);
      verify(
        () => mockChannel.invokeMethod<List<dynamic>>(AppChannel.getContacts),
      ).called(1);
    });

    test('parses valid contacts list correctly', () async {
      final mockContacts = [
        {'id': '1', 'name': 'Alice'},
        {'id': '2', 'name': 'Bob'},
      ];

      when(
        () => mockChannel.invokeMethod<List<dynamic>>(AppChannel.getContacts),
      ).thenAnswer((_) async => mockContacts);

      final result = await dataSource.getContacts();

      expect(result, hasLength(2));
      expect(result.first['name'], 'Alice');
      expect(result.last['name'], 'Bob');
    });

    test('filters out non-map entries gracefully', () async {
      final mockContacts = [
        {'id': '1', 'name': 'Alice'},
        'invalid_entry',
        {'id': '2', 'name': 'Bob'},
      ];

      when(
        () => mockChannel.invokeMethod<List<dynamic>>(AppChannel.getContacts),
      ).thenAnswer((_) async => mockContacts);

      final result = await dataSource.getContacts();

      expect(result, hasLength(2));
      expect(result.map((e) => e['id']), ['1', '2']);
    });
  });
}
