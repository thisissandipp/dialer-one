import 'package:one/contacts/contacts.dart';
import 'package:one/core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contacts_retrieve_usecase.g.dart';

/// {@template contacts_retrieve_usecase}
/// Usecase for retrieving [Contact]s from the repository.
/// {@endtemplate}
class ContactsRetrieveUseCase {
  /// {@macro contacts_retrieve_usecase}
  const ContactsRetrieveUseCase({
    required ContactsRepository contactsRepository,
  }) : _contactsRepository = contactsRepository;

  final ContactsRepository _contactsRepository;

  /// Executes the use case.
  Future<Response<List<Contact>, Exception>> call() async {
    final contactsResponse = await _contactsRepository.getContacts();
    return contactsResponse.when(
      ok: (data) => Response.ok(data),
      error: (error) => Response.error(error),
    );
  }
}

@riverpod
ContactsRetrieveUseCase contactsRetrieveUseCase(Ref ref) {
  return ContactsRetrieveUseCase(
    contactsRepository: ref.watch(contactsRepositoryProvider),
  );
}

@riverpod
Future<List<Contact>> contacts(Ref ref) async {
  final usecase = ref.watch(contactsRetrieveUseCaseProvider);
  final response = await usecase();

  return response.when(
    ok: (data) => data,
    error: (error) => throw error,
  );
}
