import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:one/utils/utils.dart';

part 'phone_number.freezed.dart';
part 'phone_number.g.dart';

@freezed
abstract class PhoneNumber with _$PhoneNumber {
  const factory PhoneNumber({
    @Default('') String number,
    @Default('') String normalizedNumber,
    @Default('') String label,
    @Default(false) bool isPrimary,
  }) = _PhoneNumber;

  factory PhoneNumber.fromJson(JsonMap json) => _$PhoneNumberFromJson(json);
}
