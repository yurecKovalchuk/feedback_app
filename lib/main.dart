import 'bootstrap.dart';
import 'package:feedback_app/app/app.dart';

void main() async {
  await bootstrap((serviceLocator) async => Application(
        serviceLocator: serviceLocator,
      ));
}
