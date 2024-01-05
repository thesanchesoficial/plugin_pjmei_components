import '../entity/check_if_user_exists_entity.dart';

abstract class CheckIfUserExists {
  Future<CheckIfUserExistsParams> exec({bool log = false});
}

