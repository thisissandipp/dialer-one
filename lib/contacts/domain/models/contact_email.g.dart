// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_email.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactEmail _$ContactEmailFromJson(Map<String, dynamic> json) =>
    _ContactEmail(
      address: json['address'] as String? ?? '',
      label: json['label'] as String? ?? '',
      isPrimary: json['isPrimary'] as bool? ?? false,
    );

Map<String, dynamic> _$ContactEmailToJson(_ContactEmail instance) =>
    <String, dynamic>{
      'address': instance.address,
      'label': instance.label,
      'isPrimary': instance.isPrimary,
    };
