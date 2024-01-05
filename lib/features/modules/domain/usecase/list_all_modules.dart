import '../entity/pjmei_module_entity.dart';

abstract class ListAllModules {
  Future<List<ModulePjmei>> exec({bool log = false});
}