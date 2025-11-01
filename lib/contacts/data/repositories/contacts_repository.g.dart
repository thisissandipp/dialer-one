// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(contactsRepository)
const contactsRepositoryProvider = ContactsRepositoryProvider._();

final class ContactsRepositoryProvider
    extends
        $FunctionalProvider<
          ContactsRepository,
          ContactsRepository,
          ContactsRepository
        >
    with $Provider<ContactsRepository> {
  const ContactsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'contactsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$contactsRepositoryHash();

  @$internal
  @override
  $ProviderElement<ContactsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ContactsRepository create(Ref ref) {
    return contactsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContactsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContactsRepository>(value),
    );
  }
}

String _$contactsRepositoryHash() =>
    r'f63c3db25498262f71bc9ba0cfed0ec08937ca8d';
