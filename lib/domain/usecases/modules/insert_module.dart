import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddModule {
  Future<ModulePjmei> exec(Map<String, dynamic> params, {bool log = false});
}
