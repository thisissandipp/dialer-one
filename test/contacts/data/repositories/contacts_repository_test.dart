import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:one/contacts/contacts.dart';
import 'package:one/core/core.dart';
import 'package:one/services/services.dart';

class MockContactsDataSource extends Mock implements ContactsDataSource {}

class MockPermissionsService extends Mock implements PermissionsService {}

void main() {
  late MockContactsDataSource mockDataSource;
  late MockPermissionsService mockPermissions;
  late ContactsRepository repository;

  setUp(() {
    mockDataSource = MockContactsDataSource();
    mockPermissions = MockPermissionsService();
    repository = ContactsRepository(
      dataSource: mockDataSource,
      permissionsService: mockPermissions,
    );
  });

  group('ContactsRepository', () {
    test('returns contacts when permission already granted', () async {
      final mockRawContacts = [
        {'id': '1', 'displayName': 'Alice'},
        {'id': '2', 'displayName': 'Bob'},
      ];
      when(
        () => mockPermissions.hasContactsPermission(),
      ).thenAnswer((_) async => true);
      when(
        () => mockDataSource.getContacts(),
      ).thenAnswer((_) async => mockRawContacts);

      final result = await repository.getContacts();

      expect(result, isA<Response<List<Contact>, GetContactsException>>());
      result.when(
        ok: (contacts) {
          expect(contacts, hasLength(2));
          expect(contacts.first.displayName, 'Alice');
          expect(contacts.last.displayName, 'Bob');
        },
        error: (_) => fail('Should not be error'),
      );

      verify(() => mockPermissions.hasContactsPermission()).called(1);
      verify(() => mockDataSource.getContacts()).called(1);
    });

    test(
      'returns error when permission denied and requestPermission=false',
      () async {
        when(
          () => mockPermissions.hasContactsPermission(),
        ).thenAnswer((_) async => false);

        final result = await repository.getContacts(false);

        result.when(
          ok: (_) => fail('Should not be ok'),
          error: (e) => expect(e.toString(), contains('Permission Denied')),
        );

        verify(() => mockPermissions.hasContactsPermission()).called(1);
        verifyNever(() => mockDataSource.getContacts());
      },
    );

    test(
      'requests permission when not granted and requestPermission=true',
      () async {
        when(
          () => mockPermissions.hasContactsPermission(),
        ).thenAnswer((_) async => false);
        when(
          () => mockPermissions.requestContactsPermission(),
        ).thenAnswer((_) async => true);

        final mockRawContacts = [
          {'id': '1', 'displayName': 'Charlie'},
        ];
        when(
          () => mockDataSource.getContacts(),
        ).thenAnswer((_) async => mockRawContacts);

        final result = await repository.getContacts(true);

        result.when(
          ok: (contacts) => expect(contacts.single.displayName, 'Charlie'),
          error: (_) => fail('Should not be error'),
        );

        verifyInOrder([
          () => mockPermissions.hasContactsPermission(),
          () => mockPermissions.requestContactsPermission(),
          () => mockDataSource.getContacts(),
        ]);
      },
    );

    test('returns error when data source throws', () async {
      when(
        () => mockPermissions.hasContactsPermission(),
      ).thenAnswer((_) async => true);
      when(
        () => mockDataSource.getContacts(),
      ).thenThrow(Exception('Failed to fetch'));

      final result = await repository.getContacts();

      result.when(
        ok: (_) => fail('Should not be error'),
        error: (e) => expect(e, isA<GetContactsException>()),
      );
    });
  });
}
