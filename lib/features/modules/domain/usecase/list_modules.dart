import '../entity/pjmei_module_entity.dart';

abstract class ListModules {
  Future<List<ModulePjmei>> exec({bool log = false});
}
