import 'package:plugin_pjmei_components/domain/entities/pjmei_module_entity.dart';

abstract class ListAllModules {
  Future<List<ModulePjmei>> exec({bool log = false});
}