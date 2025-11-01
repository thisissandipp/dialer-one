import 'package:one/utils/utils.dart';

/// A data source responsible for fetching raw contact data
/// directly from the platform (Android) via method channels.
///
/// This class only defines the contract.
abstract interface class ContactsDataSource {
  /// Fetches all contacts from the device and returns them as a list of [JsonMap].
  Future<List<JsonMap>> getContacts();
}
