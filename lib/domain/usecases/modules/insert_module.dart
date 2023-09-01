import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddModule {
  Future<ModulePjmei> exec(ModulePjmei params, {bool log = false});
}
