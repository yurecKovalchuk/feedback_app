import 'package:feedback_app/presentation/features/feedback/extension/extension.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:feedback_app/localization/localization.dart';

import '../feedback.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({
    super.key,
  });

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  FeedbackBloc get _bloc => BlocProvider.of<FeedbackBloc>(context);

  bool isEmailValid = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeedbackBloc, FeedbackState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  context.l10n.titleLabel,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(
                  height: 48,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.lock_open),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextField(
                            maxLength: 40,
                            decoration: InputDecoration(
                              labelText: context.l10n.nameLabel,
                              errorText: state.nameInput?.error?.l10n(context),
                            ),
                            onChanged: (value) => _bloc.nameInputChanged(value),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        const Icon(Icons.lock_open),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            maxLength: 40,
                            decoration: InputDecoration(
                              labelText: context.l10n.emailLabel,
                              hintText: context.l10n.emailHint,
                              errorText: state.emailInput?.error?.l10n(context),
                            ),
                            onChanged: (value) => _bloc.emailInputChanged(value),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        const Icon(Icons.lock_open),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextField(
                            maxLength: 40,
                            decoration: InputDecoration(
                              labelText: context.l10n.messageLabel,
                              errorText: state.messageInput?.error?.l10n(context),
                            ),
                            onChanged: (value) => _bloc.messageInputChanged(value),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 46), // Spacer
                ElevatedButton(
                  onPressed: () => _bloc.postFeedback(),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(64.0),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(46),
                      )),
                  child: state.status == FeedbackStateStatus.loading
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : Text(context.l10n.sendButton),
                ),
              ],
            ),
          ),
        );
      },
      listener: (context, state) {
        if (state.status == FeedbackStateStatus.success) {
          final snackBar = SnackBar(content: Text(context.l10n.successMessage(state.userModel?.name ?? '')));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
        if (state.status == FeedbackStateStatus.error) {
          final snackBar = SnackBar(content: Text(state.errorMessage ?? context.l10n.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
    );
  }
}
