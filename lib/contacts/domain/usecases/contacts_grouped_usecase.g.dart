// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_grouped_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(contactsGroupedUseCase)
const contactsGroupedUseCaseProvider = ContactsGroupedUseCaseProvider._();

final class ContactsGroupedUseCaseProvider
    extends
        $FunctionalProvider<
          ContactsGroupedUseCase,
          ContactsGroupedUseCase,
          ContactsGroupedUseCase
        >
    with $Provider<ContactsGroupedUseCase> {
  const ContactsGroupedUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'contactsGroupedUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$contactsGroupedUseCaseHash();

  @$internal
  @override
  $ProviderElement<ContactsGroupedUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ContactsGroupedUseCase create(Ref ref) {
    return contactsGroupedUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContactsGroupedUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContactsGroupedUseCase>(value),
    );
  }
}

String _$contactsGroupedUseCaseHash() =>
    r'0329f558b36daee590c59901115e8227e6d082d7';

@ProviderFor(groupedContacts)
const groupedContactsProvider = GroupedContactsProvider._();

final class GroupedContactsProvider
    extends
        $FunctionalProvider<
          AsyncValue<Map<String, List<Contact>>>,
          Map<String, List<Contact>>,
          FutureOr<Map<String, List<Contact>>>
        >
    with
        $FutureModifier<Map<String, List<Contact>>>,
        $FutureProvider<Map<String, List<Contact>>> {
  const GroupedContactsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'groupedContactsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$groupedContactsHash();

  @$internal
  @override
  $FutureProviderElement<Map<String, List<Contact>>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Map<String, List<Contact>>> create(Ref ref) {
    return groupedContacts(ref);
  }
}

String _$groupedContactsHash() => r'bd4df0475ba33cdfb865502280e414273ceabab4';
