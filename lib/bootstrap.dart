import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async =>
    runZonedGuarded(() async => _initialize(builder), _handleError);

void _initialize(FutureOr<Widget> Function() builder) async {
  return runApp(await builder());
}

void _handleError(Object error, StackTrace stack) {
  if (kDebugMode) {
    print(error);
  }
}
