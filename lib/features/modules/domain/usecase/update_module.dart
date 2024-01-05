import '../entity/pjmei_module_entity.dart';

abstract class UpdateModule {
  Future<ModulePjmei> exec(ModulePjmei module, {bool log = false});
}