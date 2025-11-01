// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_retrieve_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(contactsRetrieveUseCase)
const contactsRetrieveUseCaseProvider = ContactsRetrieveUseCaseProvider._();

final class ContactsRetrieveUseCaseProvider
    extends
        $FunctionalProvider<
          ContactsRetrieveUseCase,
          ContactsRetrieveUseCase,
          ContactsRetrieveUseCase
        >
    with $Provider<ContactsRetrieveUseCase> {
  const ContactsRetrieveUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'contactsRetrieveUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$contactsRetrieveUseCaseHash();

  @$internal
  @override
  $ProviderElement<ContactsRetrieveUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ContactsRetrieveUseCase create(Ref ref) {
    return contactsRetrieveUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContactsRetrieveUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContactsRetrieveUseCase>(value),
    );
  }
}

String _$contactsRetrieveUseCaseHash() =>
    r'43ff976c711e9b02d2eca1c846a904f1b361b281';

@ProviderFor(contacts)
const contactsProvider = ContactsProvider._();

final class ContactsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Contact>>,
          List<Contact>,
          FutureOr<List<Contact>>
        >
    with $FutureModifier<List<Contact>>, $FutureProvider<List<Contact>> {
  const ContactsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'contactsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$contactsHash();

  @$internal
  @override
  $FutureProviderElement<List<Contact>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Contact>> create(Ref ref) {
    return contacts(ref);
  }
}

String _$contactsHash() => r'ba0308b4a33e4354435b1424dc9720d9502b1311';
