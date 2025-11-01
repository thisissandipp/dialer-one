import 'package:json_annotation/json_annotation.dart';
import 'package:one/utils/utils.dart';

class SafeMapConverter extends JsonConverter<JsonMap, Map<Object?, Object?>> {
  const SafeMapConverter();

  @override
  JsonMap fromJson(Map<Object?, Object?> json) {
    return JsonMap.from(json);
  }

  @override
  Map<Object?, Object?> toJson(JsonMap object) => object;
}
