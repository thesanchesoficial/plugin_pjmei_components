import 'package:plugin_pjmei_components/main/factories/usecases/inbox/check_user_factory.dart';

abstract class CheckUser {
  Future<CheckUserEntity> exec({bool log = false});
}
