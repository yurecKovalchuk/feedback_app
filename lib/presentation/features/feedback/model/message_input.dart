import 'package:formz/formz.dart';

enum MessageValidationError {
  blank,
}

class MessageInput extends FormzInput<String, MessageValidationError> {
  const MessageInput.pure([super.value = '']) : super.pure();

  const MessageInput.dirty([super.value = '']) : super.dirty();

  @override
  MessageValidationError? validator(String value) {
    if (value.isEmpty) {
      return MessageValidationError.blank;
    } else {
      return null;
    }
  }
}
