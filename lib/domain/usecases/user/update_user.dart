import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateUser {
  Future<UserEntity> exec(UserEntity user, {bool log = false});
}