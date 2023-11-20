import 'package:injectable/injectable.dart';

import 'package:feedback_app/domain/domain.dart';

import '../datasource/datasource.dart';

@Injectable(as: FeedbackRepository)
class FeedbackRepositoryImpl implements FeedbackRepository {
  FeedbackRepositoryImpl(
    this._apiDataSource,
    this.userMapper,
  );

  final ApiDatasource _apiDataSource;
  final UserMapper userMapper;

  @override
  Future<UserModel> postFeedback(UserModel userModel) async {
    final feedbackDto = await _apiDataSource.addFeedback(userMapper.mapToDto(userModel));
    return userMapper.mapToModel(feedbackDto);
  }
}
