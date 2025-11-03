// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_native_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(contactsNativeDataSource)
const contactsNativeDataSourceProvider = ContactsNativeDataSourceProvider._();

final class ContactsNativeDataSourceProvider
    extends
        $FunctionalProvider<
          ContactsDataSource,
          ContactsDataSource,
          ContactsDataSource
        >
    with $Provider<ContactsDataSource> {
  const ContactsNativeDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'contactsNativeDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$contactsNativeDataSourceHash();

  @$internal
  @override
  $ProviderElement<ContactsDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ContactsDataSource create(Ref ref) {
    return contactsNativeDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ContactsDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ContactsDataSource>(value),
    );
  }
}

String _$contactsNativeDataSourceHash() =>
    r'245bbcc3758648508cb7dc253e9279eda12c47d1';
