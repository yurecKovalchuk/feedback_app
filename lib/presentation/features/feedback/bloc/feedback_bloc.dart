import 'package:feedback_app/domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_state.dart';

part 'feedback_bloc.freezed.dart';

class FeedbackBloc extends Cubit<FeedbackState> {
  FeedbackBloc(
    this._repository,
  ) : super(const FeedbackState(
          name: '',
          email: '',
          message: '',
        ));

  final FeedbackRepository _repository;

  void postFeedback({
    required String name,
    required String email,
    required String message,
  }) async {
      emit(state.copyWith(
        status: FeedbackStateStatus.loading,
      ));
      try {
        final userModel = UserModel(
          name: name,
          email: email,
          message: message,
        );
        await _repository.postFeedback(userModel);
        emit(state.copyWith(status: FeedbackStateStatus.success));
      } on Exception catch (e) {
        emit(state.copyWith(
          status: FeedbackStateStatus.error,
          errorMessage: e.toString(),
        ));
    }
  }
}
