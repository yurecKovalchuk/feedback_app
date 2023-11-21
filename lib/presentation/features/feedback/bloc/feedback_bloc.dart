import 'package:feedback_app/domain/domain.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';

import '../model/model.dart';

part 'feedback_state.dart';

part 'feedback_bloc.freezed.dart';

class FeedbackBloc extends Cubit<FeedbackState> {
  FeedbackBloc(
    this._repository,
  ) : super(const FeedbackState());

  final FeedbackRepository _repository;

  void emailInputChanged(String value) {
    emit(state.copyWith(
      emailInput: EmailInput.dirty(value),
    ));
  }

  void nameInputChanged(String value) {
    emit(state.copyWith(
      nameInput: NameInput.dirty(value),
    ));
  }

  void messageInputChanged(String value) {
    emit(state.copyWith(
      messageInput: MessageInput.dirty(value),
    ));
  }

  void postFeedback() async {
    if (_isValidFields()) {
      emit(state.copyWith(
        status: FeedbackStateStatus.loading,
      ));
      try {
        final userModel = UserModel(
          name: state.nameInput?.value ?? '',
          email: state.emailInput?.value ?? '',
          message: state.messageInput?.value ?? '',
        );
        final result = await _repository.postFeedback(userModel);
        emit(state.copyWith(
          userModel: result,
          status: FeedbackStateStatus.success,
        ));
      } on Exception catch (e) {
        emit(state.copyWith(
          status: FeedbackStateStatus.error,
          errorMessage: e.toString(),
        ));
      }
    } else {
      emit(state.copyWith(
        emailInput: state.emailInput ?? const EmailInput.dirty(),
        nameInput: state.nameInput ?? const NameInput.dirty(),
        messageInput: state.messageInput ?? const MessageInput.dirty(),
      ));
    }
  }

  bool _isValidFields() {
    if (state.emailInput == null || state.messageInput == null || state.nameInput == null) {
      return false;
    } else {
      return Formz.validate([state.emailInput!, state.messageInput!, state.nameInput!]);
    }
  }
}
