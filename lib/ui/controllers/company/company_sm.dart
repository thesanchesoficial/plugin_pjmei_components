import 'package:mobx/mobx.dart';
import 'package:plugin_pjmei_components/domain/entities/basic_dashboard_entity.dart';
import 'package:plugin_pjmei_components/domain/entities/company/company_entity.dart';
import 'package:plugin_pjmei_components/domain/entities/installed_widget_entity.dart';
part 'company_sm.g.dart';

class CompanySMStore = CompanySMStoreBase with _$CompanySMStore;

abstract class CompanySMStoreBase with Store {
  @observable
  CompanyEntity? company;

  @observable
  BasicDashboardEntity? basicData;

  @observable
  List<InstalledWidget>? widgets;

  @observable
  bool hideAmount = false;
  
  @observable
  int selectedIndex = 0;

  @action
  void setEstablishment(CompanyEntity item) {
    company = item;
  }

  @action
  void addWidgets(InstalledWidget item) {
    widgets ??= [];
    widgets = List.from(widgets!..add(item));
  }

  @action
  void removeWidgets(InstalledWidget item) {
    if(widgets != null) {
      widgets = List.from(widgets!..remove(item));
    }
  }

  @action
  void deleteWidgets() {
    if(widgets != null) {
      widgets = List.from(widgets!..clear());
    }
  } 

  @action
  void setBasicData(BasicDashboardEntity item) {
    basicData = item;
  }

  @action
  bool setIsHideAmount(bool value) => hideAmount = value;
  
  @action
  void setSelectedIndex(int item) {
    selectedIndex = item;
  }
}
