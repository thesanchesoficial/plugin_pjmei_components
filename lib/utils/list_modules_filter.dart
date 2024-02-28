import '../features/modules/domain/entity/pjmei_module_entity.dart';

List<ModulePjmei> listWithFilter(List<ModulePjmei>? list, String type) {
  return list?.where((element) => element.displayType == type).toList() ?? [];
} 