import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:feedback_app/app/app.dart';

class Application extends StatelessWidget {
  Application({super.key});

  late final GoRouter _router = _buildRouting();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

GoRouter _buildRouting() {
  return GoRouter(
    initialLocation: AppRoutInfo.feedback.path,
    routes: [
      GoRoute(
        path: AppRoutInfo.feedback.path,
        name: AppRoutInfo.feedback.name,
        builder: (context, state) => Container(
          color: Colors.indigo,
        ),
      ),
    ],
  );
}
