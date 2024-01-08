import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
import '../../white_label/domain/entity/white_label_entity.dart';
import '../domain/entity/environment.dart';
part 'app_sm.g.dart';

class AppSMStore = AppSMStoreBase with _$AppSMStore;

abstract class AppSMStoreBase with Store {

  @observable
  ThemeMode themeMode = ThemeMode.system;

  @observable
  Color? color;

  @observable
  bool dataSavingMode = false;

  @observable
  bool dynamicColor = false;

  @observable
  bool hideAmount = false;

  @observable
  bool isWeb = false;

  @observable
  bool closeWebMenu = false;

  @observable
  VisualDensity visualDensity = VisualDensity.compact;

  @observable
  Environment? environment = Environment.current;

  @observable
  WhiteLabelEntity? whiteLabel = WhiteLabelEntity.current;

  @observable
  int selectedIndex = 0;

  @action
  bool setIsHideAmount(bool value) => hideAmount = value;
  
  @action
  void setVisualDensity(VisualDensity item) {
    visualDensity = item;
  }

  @action
  void setThemeMode(ThemeMode item) {
    themeMode = item;
  }

  @action
  void setColor(Color item) {
    color = item;
  }

  @action
  void setDataSavingMode(bool item) {
    dataSavingMode = item;
  }

  @action
  void setDynamicColor(bool item) {
    dynamicColor = item;
  }

  @action
  void setIsWeb(bool item) {
    isWeb = item;
  }

  @action
  void setWebMenu(bool item) {
    closeWebMenu = item;
  }
  
  @action
  void setEnvironment(Environment item) {
    environment = item;
  }

  @action
  void setWhiteLabel(WhiteLabelEntity item) {
    whiteLabel = item;
  }
  
  @action
  void setSelectedIndex(int item) {
    selectedIndex = item;
  }
}
