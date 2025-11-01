import 'package:one/contacts/contacts.dart';
import 'package:one/core/core.dart';
import 'package:one/services/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contacts_repository.g.dart';

/// {@template get_contacts_exception}
/// Thrown during the contacts retrieval from native source, if failure occurs.
/// {@endtemplate}
class GetContactsException implements Exception {
  /// {@macro get_contacts_exception}
  const GetContactsException([this.error]);

  /// The associated [error].
  final Object? error;

  @override
  String toString() {
    return error.toString();
  }
}

/// {@template contacts_repository}
/// Repository that manages contacts.
/// {@endtemplate}
class ContactsRepository {
  /// {@macro contacts_repository}
  const ContactsRepository({
    required ContactsDataSource dataSource,
    required PermissionsService permissionsService,
  }) : _dataSource = dataSource,
       _permissionsService = permissionsService;

  final ContactsDataSource _dataSource;
  final PermissionsService _permissionsService;

  /// Retrieves contacts if permission is granted.
  ///
  /// If [requestPermission] is true, the repository will request
  /// permission from the user when it’s not already granted.
  Future<Response<List<Contact>, GetContactsException>> getContacts([
    bool requestPermission = true,
  ]) async {
    try {
      final hasPermissions = await _ensureContactsPermission(
        requestPermission,
      );
      if (!hasPermissions) {
        return const Response.error(
          GetContactsException('Permission Denied.'),
        );
      }
      final rawContacts = await _dataSource.getContacts();
      print('rawContacts: ${rawContacts.runtimeType}');
      final contacts = rawContacts.map(Contact.fromJson).toList();
      print('contacts: $contacts');
      return Response.ok(contacts);
    } catch (e) {
      print('ERROR: $e');
      return Response.error(GetContactsException(e));
    }
  }

  /// Ensures that the app has permission to read contacts.
  ///
  /// Returns `true` if permission is granted, otherwise `false`.
  Future<bool> _ensureContactsPermission(bool requestPermission) async {
    final hasPermissions = await _permissionsService.hasContactsPermission();
    if (hasPermissions) return true;
    if (!requestPermission) return false;
    return _permissionsService.requestContactsPermission();
  }
}

@riverpod
ContactsRepository contactsRepository(Ref ref) {
  return ContactsRepository(
    dataSource: ref.watch(contactsNativeDataSourceProvider),
    permissionsService: ref.watch(permissionsServiceProvider),
  );
}
