import 'package:flutter/services.dart';
import 'package:one/contacts/contacts.dart';
import 'package:one/core/core.dart';
import 'package:one/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contacts_native_datasource.g.dart';

class ContactsNativeDataSource implements ContactsDataSource {
  const ContactsNativeDataSource({MethodChannel? channel})
    : _channel = channel ?? const MethodChannel(AppChannel.name);

  final MethodChannel _channel;

  @override
  Future<List<JsonMap>> getContacts() async {
    const method = AppChannel.getContacts;
    final result = await _channel.invokeMethod<List<dynamic>>(method);
    if (result == null) return [];
    return result.whereType<Map>().map((e) => JsonMap.from(e)).toList();
  }
}

@riverpod
ContactsDataSource contactsNativeDataSource(Ref ref) {
  return const ContactsNativeDataSource();
}
