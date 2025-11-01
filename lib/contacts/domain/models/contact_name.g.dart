// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactName _$ContactNameFromJson(Map<String, dynamic> json) => _ContactName(
  firstName: json['firstName'] as String? ?? '',
  lastName: json['lastName'] as String? ?? '',
  middleName: json['middleName'] as String? ?? '',
  prefix: json['prefix'] as String? ?? '',
  suffix: json['suffix'] as String? ?? '',
  phoneticFirstName: json['phoneticFirstName'] as String? ?? '',
  phoneticLastName: json['phoneticLastName'] as String? ?? '',
  phoneticMiddleName: json['phoneticMiddleName'] as String? ?? '',
);

Map<String, dynamic> _$ContactNameToJson(_ContactName instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'prefix': instance.prefix,
      'suffix': instance.suffix,
      'phoneticFirstName': instance.phoneticFirstName,
      'phoneticLastName': instance.phoneticLastName,
      'phoneticMiddleName': instance.phoneticMiddleName,
    };
