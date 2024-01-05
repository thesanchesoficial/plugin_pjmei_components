import '../../../user/domain/entity/user_entity.dart';

abstract class RefreshToken {
  Future<UserEntity> exec({bool log = false});
}