import '../entity/check_user_entity.dart';

abstract class CheckUser {
  Future<CheckUserEntity> exec({bool log = false});
}
