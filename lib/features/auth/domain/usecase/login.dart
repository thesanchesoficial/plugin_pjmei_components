import '../../../user/domain/entity/user_entity.dart';
import '../entity/login_params_entity.dart';

abstract class Login {
  Future<UserEntity> exec(LoginParams params, {bool log = false});
}