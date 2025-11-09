import 'package:one/contacts/contacts.dart';
import 'package:one/core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contacts_grouped_usecase.g.dart';

/// {@template contacts_grouped_usecase}
/// Usecase for retrieving and grouping [Contact]s alphabetically.
/// {@endtemplate}
class ContactsGroupedUseCase {
  /// {@macro contacts_grouped_usecase}
  const ContactsGroupedUseCase({
    required ContactsRetrieveUseCase retrieveUseCase,
  }) : _retrieveUseCase = retrieveUseCase;

  final ContactsRetrieveUseCase _retrieveUseCase;

  /// Executes the use case and returns contacts grouped alphabetically.
  Future<Response<Map<String, List<Contact>>, Exception>> call() async {
    final response = await _retrieveUseCase();

    return response.when(
      ok: (contacts) => Response.ok(_groupAlphabetically(contacts)),
      error: (error) => Response.error(error),
    );
  }

  Map<String, List<Contact>> _groupAlphabetically(List<Contact> contacts) {
    final grouped = <String, List<Contact>>{};
    for (final contact in contacts) {
      final groupKey = _groupKey(contact.displayName);
      grouped.putIfAbsent(groupKey, () => []).add(contact);
    }

    final sortedKeys = grouped.keys.toList()
      ..sort((a, b) {
        if (a == '#') return 1;
        if (b == '#') return -1;
        return a.compareTo(b);
      });

    return {
      for (final key in sortedKeys)
        key: (grouped[key]!
          ..sort((a, b) => a.displayName.compareTo(b.displayName))),
    };
  }

  String _groupKey(String name) {
    if (name.isEmpty) return '#';
    final firstChar = name.trim()[0].toUpperCase();

    if (RegExp(r'[A-Z]').hasMatch(firstChar)) {
      return firstChar;
    } else {
      return '#';
    }
  }
}

@riverpod
ContactsGroupedUseCase contactsGroupedUseCase(Ref ref) {
  return ContactsGroupedUseCase(
    retrieveUseCase: ref.watch(contactsRetrieveUseCaseProvider),
  );
}

@riverpod
Future<Map<String, List<Contact>>> groupedContacts(Ref ref) async {
  final usecase = ref.watch(contactsGroupedUseCaseProvider);
  final response = await usecase();

  return response.when(
    ok: (data) => data,
    error: (error) => throw error,
  );
}
