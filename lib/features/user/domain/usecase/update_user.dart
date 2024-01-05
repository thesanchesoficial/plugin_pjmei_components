import '../entity/user_entity.dart';

abstract class UpdateUser {
  Future<UserEntity> exec(UserEntity user, {bool log = false});
}