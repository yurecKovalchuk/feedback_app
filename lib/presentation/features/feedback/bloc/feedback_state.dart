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
    required String name,
    required String email,
    required String message,
    String? errorMessage,
  }) = _FeedbackState;
}
