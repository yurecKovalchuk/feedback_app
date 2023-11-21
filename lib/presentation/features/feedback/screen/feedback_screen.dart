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

  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController message = TextEditingController();

  bool isEmailValid = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeedbackBloc, FeedbackState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 48,
                ),
                Column(
                  children: [
                    TextField(
                      controller: _name,
                      maxLength: 40,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_open),
                        labelText: context.l10n.localeName,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        maxLength: 30,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock_open),
                            labelText: context.l10n.emailLabel,
                            hintText: context.l10n.emailHint,
                            errorText: isEmailValid ? null : context.l10n.emailError),
                        onChanged: (email) {
                          setState(() {
                            isEmailValid = checkEmailValid(email);
                          });
                        }),
                    const SizedBox(height: 16.0),
                    TextField(
                      controller: message,
                      maxLength: 20,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_open),
                        labelText: context.l10n.emailLabel,
                      ),
                    ),
                  ],
                ),
                const Spacer(), // Spacer
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                  ),
                  child: ElevatedButton(
                    onPressed: () => _bloc.postFeedback(
                      name: _name.text,
                      email: _email.text,
                      message: message.text,
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(72.0),
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
                ),
              ],
            ),
          ),
        );
      },
      listener: (context, state) {
        if (state.status == FeedbackStateStatus.success) {
          final snackBar = SnackBar(content: Text(context.l10n.successMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
        if (state.status == FeedbackStateStatus.error) {
          final snackBar = SnackBar(content: Text(state.errorMessage ?? context.l10n.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
    );
  }

  bool checkEmailValid(String email) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    final isValid = emailRegex.hasMatch(email);
    return isValid;
  }
}
