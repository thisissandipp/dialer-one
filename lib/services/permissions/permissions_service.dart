import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'permissions_service.g.dart';

/// {@template permissions_service}
/// A service responsible for handling app permissions.
/// {@endtemplate}
class PermissionsService {
  /// {@macro permissions_service}
  const PermissionsService();

  /// Checks if the app already has permission to access contacts.
  Future<bool> hasContactsPermission() async {
    final status = await Permission.contacts.status;
    return status.isGranted;
  }

  /// Requests permission from the user to access contacts.
  Future<bool> requestContactsPermission() async {
    final status = await Permission.contacts.request();
    return status.isGranted;
  }
}

@riverpod
PermissionsService permissionsService(Ref ref) {
  return const PermissionsService();
}
