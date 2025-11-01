import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:one/utils/utils.dart';

part 'contact_email.freezed.dart';
part 'contact_email.g.dart';

@freezed
abstract class ContactEmail with _$ContactEmail {
  const factory ContactEmail({
    @Default('') String address,
    @Default('') String label,
    @Default(false) bool isPrimary,
  }) = _ContactEmail;

  factory ContactEmail.fromJson(JsonMap json) => _$ContactEmailFromJson(json);
}
