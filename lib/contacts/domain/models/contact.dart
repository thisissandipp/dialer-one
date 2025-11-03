import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:one/contacts/contacts.dart';
import 'package:one/utils/utils.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
abstract class Contact with _$Contact {
  const factory Contact({
    @Default(0) int id,
    @Default('') String displayName,
    @Uint8ListConverter() Uint8List? displayPhoto,
    @SafeMapConverter() @Default(ContactName()) ContactName contactName,
    @SafeMapConverter() @Default([]) List<PhoneNumber> phoneNumbers,
    @SafeMapConverter() @Default([]) List<ContactEmail> contactEmails,
    @SafeMapConverter() @Default([]) List<PostalAddress> postalAddresses,
  }) = _Contact;

  factory Contact.fromJson(JsonMap json) => _$ContactFromJson(json);
}
