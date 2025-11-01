import 'package:flutter/services.dart';
import 'package:one/contacts/contacts.dart';
import 'package:one/core/core.dart';
import 'package:one/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contacts_native_datasource.g.dart';

class ContactsNativeDataSource implements ContactsDataSource {
  static const MethodChannel _channel = MethodChannel(AppChannel.name);

  @override
  Future<List<JsonMap>> getContacts() async {
    const method = AppChannel.getContacts;
    final result = await _channel.invokeMethod<List<dynamic>>(method);
    if (result == null) return [];
    // return result.whereType<Map>().map((e) => Map<String, dynamic>.from(e)).toList();
    return result.map((e) => JsonMap.from(e as Map)).toList();
  }
}

@riverpod
ContactsDataSource contactsNativeDataSource(Ref ref) {
  return ContactsNativeDataSource();
}
