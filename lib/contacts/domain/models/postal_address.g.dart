// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postal_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostalAddress _$PostalAddressFromJson(Map<String, dynamic> json) =>
    _PostalAddress(
      formattedAddress: json['formattedAddress'] as String? ?? '',
      city: json['city'] as String? ?? '',
      country: json['country'] as String? ?? '',
      neighborhood: json['neighborhood'] as String? ?? '',
      poBox: json['poBox'] as String? ?? '',
      postCode: json['postCode'] as String? ?? '',
      region: json['region'] as String? ?? '',
      street: json['street'] as String? ?? '',
      label: json['label'] as String? ?? '',
      isPrimary: json['isPrimary'] as bool? ?? false,
    );

Map<String, dynamic> _$PostalAddressToJson(_PostalAddress instance) =>
    <String, dynamic>{
      'formattedAddress': instance.formattedAddress,
      'city': instance.city,
      'country': instance.country,
      'neighborhood': instance.neighborhood,
      'poBox': instance.poBox,
      'postCode': instance.postCode,
      'region': instance.region,
      'street': instance.street,
      'label': instance.label,
      'isPrimary': instance.isPrimary,
    };
