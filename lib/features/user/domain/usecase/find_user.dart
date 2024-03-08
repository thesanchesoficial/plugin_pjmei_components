import '../entity/user_entity.dart';

abstract class FindUser {
  Future<UserEntity> exec({bool log = false});
}