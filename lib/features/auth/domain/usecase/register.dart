import '../../../user/domain/entity/user_entity.dart';
import '../entity/register_params_entity.dart';

abstract class Register {
  Future<UserEntity> exec(RegisterParams params, {bool log = false});
}