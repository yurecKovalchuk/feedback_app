// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response.freezed.dart';

part 'error_response.g.dart';

const _nameKey = 'name';
const _emailKey = 'email';
const _messageKey = 'message';

@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    @JsonKey(name: 'detail') String? detail,
    @JsonKey(name: _nameKey) List<String>? name,
    @JsonKey(name: _emailKey) List<String>? email,
    @JsonKey(name: _messageKey) List<String>? message,
    Map<String, String>? data,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, Object?> json) => _$ErrorResponseFromJson(json);
}

extension ErrorResponseExtension on ErrorResponse {
  Exception generateException() {
    final nameError = name != null && name!.isNotEmpty ? '$_nameKey, ${name?.first}' : null;
    final emailError = email != null && email!.isNotEmpty ? '$_emailKey, ${email?.first}' : null;
    final messageError = message != null && message!.isNotEmpty ? '$_messageKey, ${message?.first}' : null;

    final validationError = nameError?.toLowerCase() ?? emailError?.toLowerCase() ?? messageError?.toLowerCase();

    return Exception(detail ?? validationError ?? 'Unknown');
  }
}
