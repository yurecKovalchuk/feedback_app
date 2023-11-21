import 'app_localizations.g.dart';

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

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
  String get successMessage => 'Successful execution';

  @override
  String get errorMessage => 'Something happened';
}
