import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:one/utils/utils.dart';

part 'postal_address.freezed.dart';
part 'postal_address.g.dart';

@freezed
abstract class PostalAddress with _$PostalAddress {
  const factory PostalAddress({
    @Default('') String formattedAddress,
    @Default('') String city,
    @Default('') String country,
    @Default('') String neighborhood,
    @Default('') String poBox,
    @Default('') String postCode,
    @Default('') String region,
    @Default('') String street,
    @Default('') String label,
    @Default(false) bool isPrimary,
  }) = _PostalAddress;

  factory PostalAddress.fromJson(JsonMap json) => _$PostalAddressFromJson(json);
}
