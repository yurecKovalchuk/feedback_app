import 'package:feedback_app/presentation/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:go_router/go_router.dart';

import 'package:feedback_app/app/app.dart';

import '../domain/domain.dart';

class Application extends StatelessWidget {
  Application({
    super.key,
    required this.serviceLocator,
  });

  late final GoRouter _router = _buildRouting();
  final GetIt serviceLocator;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }

  GoRouter _buildRouting() {
    return GoRouter(initialLocation: AppRoutInfo.feedback.path, debugLogDiagnostics: true, routes: [
      GoRoute(
        path: AppRoutInfo.feedback.path,
        name: AppRoutInfo.feedback.name,
        builder: (context, state) {
          return BlocProvider<FeedbackBloc>(
              create: (BuildContext context) => FeedbackBloc(
                    serviceLocator<FeedbackRepository>(),
                  ),
              child: const FeedbackScreen());
        },
      ),
    ]);
  }
}
