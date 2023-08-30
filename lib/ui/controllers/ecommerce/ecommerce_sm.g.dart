// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ecommerce_sm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EcommerceSMStore on EcommerceSMStoreBase, Store {
  late final _$establishmentAtom =
      Atom(name: 'EcommerceSMStoreBase.establishment', context: context);

  @override
  EcommerceEntity? get establishment {
    _$establishmentAtom.reportRead();
    return super.establishment;
  }

  @override
  set establishment(EcommerceEntity? value) {
    _$establishmentAtom.reportWrite(value, super.establishment, () {
      super.establishment = value;
    });
  }

  late final _$selectedIndexAtom =
      Atom(name: 'EcommerceSMStoreBase.selectedIndex', context: context);

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  late final _$childGlobalAtom =
      Atom(name: 'EcommerceSMStoreBase.childGlobal', context: context);

  @override
  Widget get childGlobal {
    _$childGlobalAtom.reportRead();
    return super.childGlobal;
  }

  @override
  set childGlobal(Widget value) {
    _$childGlobalAtom.reportWrite(value, super.childGlobal, () {
      super.childGlobal = value;
    });
  }

  late final _$isWebAtom =
      Atom(name: 'EcommerceSMStoreBase.isWeb', context: context);

  @override
  bool get isWeb {
    _$isWebAtom.reportRead();
    return super.isWeb;
  }

  @override
  set isWeb(bool value) {
    _$isWebAtom.reportWrite(value, super.isWeb, () {
      super.isWeb = value;
    });
  }

  late final _$hideAmountAtom =
      Atom(name: 'EcommerceSMStoreBase.hideAmount', context: context);

  @override
  bool get hideAmount {
    _$hideAmountAtom.reportRead();
    return super.hideAmount;
  }

  @override
  set hideAmount(bool value) {
    _$hideAmountAtom.reportWrite(value, super.hideAmount, () {
      super.hideAmount = value;
    });
  }

  late final _$showMenuAtom =
      Atom(name: 'EcommerceSMStoreBase.showMenu', context: context);

  @override
  bool get showMenu {
    _$showMenuAtom.reportRead();
    return super.showMenu;
  }

  @override
  set showMenu(bool value) {
    _$showMenuAtom.reportWrite(value, super.showMenu, () {
      super.showMenu = value;
    });
  }

  late final _$EcommerceSMStoreBaseActionController =
      ActionController(name: 'EcommerceSMStoreBase', context: context);

  @override
  void setSelectedIndex(int item) {
    final _$actionInfo = _$EcommerceSMStoreBaseActionController.startAction(
        name: 'EcommerceSMStoreBase.setSelectedIndex');
    try {
      return super.setSelectedIndex(item);
    } finally {
      _$EcommerceSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget setChildGlobal(Widget child) {
    final _$actionInfo = _$EcommerceSMStoreBaseActionController.startAction(
        name: 'EcommerceSMStoreBase.setChildGlobal');
    try {
      return super.setChildGlobal(child);
    } finally {
      _$EcommerceSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool setIsWeb(bool value) {
    final _$actionInfo = _$EcommerceSMStoreBaseActionController.startAction(
        name: 'EcommerceSMStoreBase.setIsWeb');
    try {
      return super.setIsWeb(value);
    } finally {
      _$EcommerceSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool setIsHideAmount(bool value) {
    final _$actionInfo = _$EcommerceSMStoreBaseActionController.startAction(
        name: 'EcommerceSMStoreBase.setIsHideAmount');
    try {
      return super.setIsHideAmount(value);
    } finally {
      _$EcommerceSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool setShowMenu(bool value) {
    final _$actionInfo = _$EcommerceSMStoreBaseActionController.startAction(
        name: 'EcommerceSMStoreBase.setShowMenu');
    try {
      return super.setShowMenu(value);
    } finally {
      _$EcommerceSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEstablishment(EcommerceEntity item) {
    final _$actionInfo = _$EcommerceSMStoreBaseActionController.startAction(
        name: 'EcommerceSMStoreBase.setEstablishment');
    try {
      return super.setEstablishment(item);
    } finally {
      _$EcommerceSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
establishment: ${establishment},
selectedIndex: ${selectedIndex},
childGlobal: ${childGlobal},
isWeb: ${isWeb},
hideAmount: ${hideAmount},
showMenu: ${showMenu}
    ''';
  }
}
