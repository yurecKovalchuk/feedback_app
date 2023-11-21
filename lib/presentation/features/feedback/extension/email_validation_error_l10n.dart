import 'package:flutter/material.dart';

import 'package:feedback_app/localization/localization.dart';

import '../model/model.dart';

extension EmailValidationErrorL10n on EmailValidationError {
  String? l10n(BuildContext context) {
    switch (this) {
      case EmailValidationError.blank:
        return context.l10n.validationBlankError;
      case EmailValidationError.format:
        return context.l10n.validationEmailError;
    }
  }
}
