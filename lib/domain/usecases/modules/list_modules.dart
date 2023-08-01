import 'package:plugin_pjmei_components/domain/entities/pjmei_module_entity.dart';

abstract class ListModules {
  Future<List<ModulePjmei>> exec();
}
