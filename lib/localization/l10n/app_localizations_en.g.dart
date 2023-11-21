import 'app_localizations.g.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get titleLabel => 'Contact Us';

  @override
  String get nameLabel => 'Name';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'example@example.com';

  @override
  String get emailError => 'Email is not correctly';

  @override
  String get messageLabel => 'Message';

  @override
  String get sendButton => 'Send';

  @override
  String get loadingMessage => 'Sending...';

  @override
  String successMessage(Object name) {
    return 'Successful execution feedback from $name';
  }

  @override
  String get errorMessage => 'Something happened';

  @override
  String get validationBlankError => 'Please enter a value';

  @override
  String get validationEmailError => 'Please enter a valid email';
}
