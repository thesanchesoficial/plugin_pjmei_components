import 'package:mobx/mobx.dart';
import '../domain/entity/pjmei_module_entity.dart';
part 'module_sm.g.dart';

class ModuleSMStore = ModuleSMStoreBase with _$ModuleSMStore;

abstract class ModuleSMStoreBase with Store {
  
  @observable
  ModulePjmei? module;

  @observable
  List<ModulePjmei>? modules;

  @action
  void setModule(ModulePjmei? item) {
    module = item;
  }

  @action
  void addModule(ModulePjmei item) {
    modules ??= [];
    modules = List.from(modules!..add(item));
  }

  @action
  void removeModule(ModulePjmei item) {
    if(modules != null) {
      modules = List.from(modules!..remove(item));
    }
  }

  @action
  void deleteModules() {
    if(modules != null) {
      modules = List.from(modules!..clear());
    }
  } 
}
