import 'package:plugin_pjmei_components/domain/entities/pjmei_module_entity.dart';

abstract class UpdateModule {
  Future<ModulePjmei> exec(ModulePjmei module, {bool log = false});
}