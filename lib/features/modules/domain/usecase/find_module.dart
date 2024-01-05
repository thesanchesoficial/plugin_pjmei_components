import '../entity/pjmei_module_entity.dart';

abstract class FindModule {
  Future<ModulePjmei> exec({bool log = false});
}
