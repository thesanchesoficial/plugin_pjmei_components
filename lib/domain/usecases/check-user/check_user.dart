import 'package:plugin_pjmei_components/main/factories/usecases/check-user/check_user_factory.dart';

abstract class CheckUser {
  Future<CheckUserEntity> exec({bool log = false});
}
