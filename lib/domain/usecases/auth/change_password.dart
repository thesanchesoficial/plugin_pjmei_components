import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ChangePassword {
  Future<UserEntity> exec({bool log = false});
}
