part of 'feedback_bloc.dart';

enum FeedbackStateStatus {
  initial,
  loading,
  error,
  success,
}

@freezed
class FeedbackState with _$FeedbackState {
  const factory FeedbackState({
    @Default(FeedbackStateStatus.initial) FeedbackStateStatus status,
    UserModel? userModel,
    NameInput? nameInput,
    EmailInput? emailInput,
    MessageInput? messageInput,
    String? errorMessage,
  }) = _FeedbackState;
}
