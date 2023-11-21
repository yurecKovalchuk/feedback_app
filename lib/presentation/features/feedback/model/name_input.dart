import 'package:formz/formz.dart';

enum NameValidationError {
  blank,
}

class NameInput extends FormzInput<String, NameValidationError> {
  const NameInput.pure([super.value = '']) : super.pure();

  const NameInput.dirty([super.value = '']) : super.dirty();

  @override
  NameValidationError? validator(String value) {
    if (value.isEmpty) {
      return NameValidationError.blank;
    } else {
      return null;
    }
  }
}
