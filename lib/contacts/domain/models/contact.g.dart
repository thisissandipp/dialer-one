// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Contact _$ContactFromJson(Map<String, dynamic> json) => _Contact(
  id: json['id'] as String? ?? '',
  displayName: json['displayName'] as String? ?? '',
  displayPhoto: const Uint8ListConverter().fromJson(
    json['displayPhoto'] as List<int>?,
  ),
  contactName: json['contactName'] == null
      ? const ContactName()
      : ContactName.fromJson(
          const SafeMapConverter().fromJson(json['contactName'] as Map),
        ),
  phoneNumbers:
      (json['phoneNumbers'] as List<dynamic>?)
          ?.map(
            (e) => PhoneNumber.fromJson(
              const SafeMapConverter().fromJson(e as Map),
            ),
          )
          .toList() ??
      const [],
  contactEmails:
      (json['contactEmails'] as List<dynamic>?)
          ?.map(
            (e) => ContactEmail.fromJson(
              const SafeMapConverter().fromJson(e as Map),
            ),
          )
          .toList() ??
      const [],
  postalAddresses:
      (json['postalAddresses'] as List<dynamic>?)
          ?.map(
            (e) => PostalAddress.fromJson(
              const SafeMapConverter().fromJson(e as Map),
            ),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$ContactToJson(_Contact instance) => <String, dynamic>{
  'id': instance.id,
  'displayName': instance.displayName,
  'displayPhoto': const Uint8ListConverter().toJson(instance.displayPhoto),
  'contactName': instance.contactName,
  'phoneNumbers': instance.phoneNumbers,
  'contactEmails': instance.contactEmails,
  'postalAddresses': instance.postalAddresses,
};
