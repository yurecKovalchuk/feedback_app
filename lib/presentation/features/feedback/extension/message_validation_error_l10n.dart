import 'package:flutter/material.dart';

import 'package:feedback_app/localization/localization.dart';

import '../model/model.dart';

extension MessageValidationErrorL10n on MessageValidationError {
  String? l10n(BuildContext context) {
    {
      return context.l10n.validationBlankError;
    }
  }
}
