import '../entity/pjmei_module_entity.dart';

abstract class AddModule {
  Future<ModulePjmei> exec(Map<String, dynamic> params, {bool log = false});
}
