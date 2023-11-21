import 'app_localizations.g.dart';

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get titleLabel => 'Зв\'яжіться з нами';

  @override
  String get nameLabel => 'Ім\'я';

  @override
  String get emailLabel => 'Електронна пошта';

  @override
  String get emailHint => 'приклад@example.com';

  @override
  String get emailError => 'Електронна пошта введена невірно';

  @override
  String get messageLabel => 'Повідомлення';

  @override
  String get sendButton => 'Надіслати';

  @override
  String get loadingMessage => 'Надсилання...';

  @override
  String successMessage(Object name) {
    return 'Успішно виконаний відбек для $name';
  }

  @override
  String get errorMessage => 'Сталася помилка';

  @override
  String get validationBlankError => 'Будь ласка, введіть значення';

  @override
  String get validationEmailError => 'Будь ласка, введіть правильну електронну пошту';
}
