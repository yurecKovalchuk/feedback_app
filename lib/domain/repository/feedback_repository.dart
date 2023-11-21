import 'package:feedback_app/domain/models/models.dart';

abstract class FeedbackRepository {
  Future<UserModel> postFeedback(UserModel userModel);
}
