import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'ecommerce_sm.g.dart';

class EcommerceSMStore = EcommerceSMStoreBase with _$EcommerceSMStore;

abstract class EcommerceSMStoreBase with Store {
  
  @observable
  int selectedIndex = 0;

  @observable
  Widget childGlobal = const SizedBox();

  @observable
  bool isWeb = false;

  @observable
  bool hideAmount = false;

  @observable
  bool showMenu = false;

  @action
  void setSelectedIndex(int item) {
    selectedIndex = item;
  }

  @action
  Widget setChildGlobal(Widget child) => childGlobal = child;

  @action
  bool setIsWeb(bool value) => isWeb = value;

  @action
  bool setIsHideAmount(bool value) => hideAmount = value;

  @action
  bool setShowMenu(bool value) => showMenu = value;
}
