// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_number.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PhoneNumber _$PhoneNumberFromJson(Map<String, dynamic> json) => _PhoneNumber(
  number: json['number'] as String? ?? '',
  normalizedNumber: json['normalizedNumber'] as String? ?? '',
  label: json['label'] as String? ?? '',
  isPrimary: json['isPrimary'] as bool? ?? false,
);

Map<String, dynamic> _$PhoneNumberToJson(_PhoneNumber instance) =>
    <String, dynamic>{
      'number': instance.number,
      'normalizedNumber': instance.normalizedNumber,
      'label': instance.label,
      'isPrimary': instance.isPrimary,
    };
