import 'package:feedback_app/domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_state.dart';

part 'feedback_bloc.freezed.dart';

class FeedbackBloc extends Cubit<FeedbackState> {
  FeedbackBloc(
    this._repository,
  ) : super(const FeedbackState());

  final FeedbackRepository _repository;

  void postFeedback(UserModel userModel) {
    _repository.postFeedback(userModel);
  }
}
