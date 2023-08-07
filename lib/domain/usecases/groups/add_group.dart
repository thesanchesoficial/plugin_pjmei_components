import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddGroup {
  Future<GroupEntity> exec(GroupEntity params, {bool log = false});
}