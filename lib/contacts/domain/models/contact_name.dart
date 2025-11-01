import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:one/utils/utils.dart';

part 'contact_name.freezed.dart';
part 'contact_name.g.dart';

@freezed
abstract class ContactName with _$ContactName {
  const factory ContactName({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String middleName,
    @Default('') String prefix,
    @Default('') String suffix,
    @Default('') String phoneticFirstName,
    @Default('') String phoneticLastName,
    @Default('') String phoneticMiddleName,
  }) = _ContactName;

  factory ContactName.fromJson(JsonMap json) => _$ContactNameFromJson(json);
}
