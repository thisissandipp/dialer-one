// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permissions_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(permissionsService)
const permissionsServiceProvider = PermissionsServiceProvider._();

final class PermissionsServiceProvider
    extends
        $FunctionalProvider<
          PermissionsService,
          PermissionsService,
          PermissionsService
        >
    with $Provider<PermissionsService> {
  const PermissionsServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'permissionsServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$permissionsServiceHash();

  @$internal
  @override
  $ProviderElement<PermissionsService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PermissionsService create(Ref ref) {
    return permissionsService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PermissionsService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PermissionsService>(value),
    );
  }
}

String _$permissionsServiceHash() =>
    r'27263863dd005be657b81ec610317bddbb73858f';
