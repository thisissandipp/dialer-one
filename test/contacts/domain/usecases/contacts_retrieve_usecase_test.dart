// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:one/contacts/contacts.dart';
import 'package:one/core/core.dart';

class MockContactsRepository extends Mock implements ContactsRepository {}

void main() {
  late MockContactsRepository mockRepository;
  late ContactsRetrieveUseCase usecase;

  setUp(() {
    mockRepository = MockContactsRepository();
    usecase = ContactsRetrieveUseCase(contactsRepository: mockRepository);
  });

  group('ContactsRetrieveUseCase', () {
    test('returns Response.ok when repository returns success', () async {
      final mockContacts = [Contact(id: '1', displayName: 'Alice')];
      when(() => mockRepository.getContacts(any()))
          .thenAnswer((_) async => Response.ok(mockContacts));

      final result = await usecase();

      expect(result, isA<Response<List<Contact>, Exception>>());
      result.when(
        ok: (data) {
          expect(data, equals(mockContacts));
        },
        error: (_) => fail('Expected Response.ok'),
      );
      verify(() => mockRepository.getContacts(any())).called(1);
    });

    test('returns Response.error when repository returns error', () async {
      const exception = GetContactsException('Failure');
      when(() => mockRepository.getContacts(any()))
          .thenAnswer((_) async => const Response.error(exception));

      final result = await usecase();

      result.when(
        ok: (_) => fail('Expected Response.error'),
        error: (err) => expect(err, equals(exception)),
      );
      verify(() => mockRepository.getContacts(any())).called(1);
    });
  });
}
