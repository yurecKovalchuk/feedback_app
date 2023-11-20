import 'package:feedback_app/data/dto/dto.dart';
import 'package:injectable/injectable.dart';

import '../models/models.dart';

import 'mapper_contract.dart';

@injectable
class UserMapper implements MapperContract<UserDTO, UserModel> {
  @override
  UserDTO mapToDto(UserModel model) {
    return UserDTO(name: model.name, email: model.email, message: model.message);
  }

  @override
  UserModel mapToModel(UserDTO dto) {
    return UserModel(name: dto.name ?? '', email: dto.email ?? '', message: dto.message ?? '');
  }
}
