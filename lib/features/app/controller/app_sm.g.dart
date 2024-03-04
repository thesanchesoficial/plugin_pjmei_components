// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_sm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppSMStore on AppSMStoreBase, Store {
  late final _$themeModeAtom =
      Atom(name: 'AppSMStoreBase.themeMode', context: context);

  @override
  ThemeMode get themeMode {
    _$themeModeAtom.reportRead();
    return super.themeMode;
  }

  @override
  set themeMode(ThemeMode value) {
    _$themeModeAtom.reportWrite(value, super.themeMode, () {
      super.themeMode = value;
    });
  }

  late final _$colorAtom = Atom(name: 'AppSMStoreBase.color', context: context);

  @override
  Color? get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(Color? value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
    });
  }

  late final _$dataSavingModeAtom =
      Atom(name: 'AppSMStoreBase.dataSavingMode', context: context);

  @override
  bool get dataSavingMode {
    _$dataSavingModeAtom.reportRead();
    return super.dataSavingMode;
  }

  @override
  set dataSavingMode(bool value) {
    _$dataSavingModeAtom.reportWrite(value, super.dataSavingMode, () {
      super.dataSavingMode = value;
    });
  }

  late final _$dynamicColorAtom =
      Atom(name: 'AppSMStoreBase.dynamicColor', context: context);

  @override
  bool get dynamicColor {
    _$dynamicColorAtom.reportRead();
    return super.dynamicColor;
  }

  @override
  set dynamicColor(bool value) {
    _$dynamicColorAtom.reportWrite(value, super.dynamicColor, () {
      super.dynamicColor = value;
    });
  }

  late final _$soundEnabledAtom =
      Atom(name: 'AppSMStoreBase.soundEnabled', context: context);

  @override
  bool get soundEnabled {
    _$soundEnabledAtom.reportRead();
    return super.soundEnabled;
  }

  @override
  set soundEnabled(bool value) {
    _$soundEnabledAtom.reportWrite(value, super.soundEnabled, () {
      super.soundEnabled = value;
    });
  }

  late final _$hideAmountAtom =
      Atom(name: 'AppSMStoreBase.hideAmount', context: context);

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

  late final _$isWebAtom = Atom(name: 'AppSMStoreBase.isWeb', context: context);

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

  late final _$closeWebMenuAtom =
      Atom(name: 'AppSMStoreBase.closeWebMenu', context: context);

  @override
  bool get closeWebMenu {
    _$closeWebMenuAtom.reportRead();
    return super.closeWebMenu;
  }

  @override
  set closeWebMenu(bool value) {
    _$closeWebMenuAtom.reportWrite(value, super.closeWebMenu, () {
      super.closeWebMenu = value;
    });
  }

  late final _$visualDensityAtom =
      Atom(name: 'AppSMStoreBase.visualDensity', context: context);

  @override
  VisualDensity get visualDensity {
    _$visualDensityAtom.reportRead();
    return super.visualDensity;
  }

  @override
  set visualDensity(VisualDensity value) {
    _$visualDensityAtom.reportWrite(value, super.visualDensity, () {
      super.visualDensity = value;
    });
  }

  late final _$environmentAtom =
      Atom(name: 'AppSMStoreBase.environment', context: context);

  @override
  Environment? get environment {
    _$environmentAtom.reportRead();
    return super.environment;
  }

  @override
  set environment(Environment? value) {
    _$environmentAtom.reportWrite(value, super.environment, () {
      super.environment = value;
    });
  }

  late final _$whiteLabelAtom =
      Atom(name: 'AppSMStoreBase.whiteLabel', context: context);

  @override
  WhiteLabelEntity? get whiteLabel {
    _$whiteLabelAtom.reportRead();
    return super.whiteLabel;
  }

  @override
  set whiteLabel(WhiteLabelEntity? value) {
    _$whiteLabelAtom.reportWrite(value, super.whiteLabel, () {
      super.whiteLabel = value;
    });
  }

  late final _$selectedIndexAtom =
      Atom(name: 'AppSMStoreBase.selectedIndex', context: context);

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

  late final _$countMessagesAtom =
      Atom(name: 'AppSMStoreBase.countMessages', context: context);

  @override
  int get countMessages {
    _$countMessagesAtom.reportRead();
    return super.countMessages;
  }

  @override
  set countMessages(int value) {
    _$countMessagesAtom.reportWrite(value, super.countMessages, () {
      super.countMessages = value;
    });
  }

  late final _$AppSMStoreBaseActionController =
      ActionController(name: 'AppSMStoreBase', context: context);

  @override
  bool setIsHideAmount(bool value) {
    final _$actionInfo = _$AppSMStoreBaseActionController.startAction(
        name: 'AppSMStoreBase.setIsHideAmount');
    try {
      return super.setIsHideAmount(value);
    } finally {
      _$AppSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVisualDensity(VisualDensity item) {
    final _$actionInfo = _$AppSMStoreBaseActionController.startAction(
        name: 'AppSMStoreBase.setVisualDensity');
    try {
      return super.setVisualDensity(item);
    } finally {
      _$AppSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setThemeMode(ThemeMode item) {
    final _$actionInfo = _$AppSMStoreBaseActionController.startAction(
        name: 'AppSMStoreBase.setThemeMode');
    try {
      return super.setThemeMode(item);
    } finally {
      _$AppSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setColor(Color item) {
    final _$actionInfo = _$AppSMStoreBaseActionController.startAction(
        name: 'AppSMStoreBase.setColor');
    try {
      return super.setColor(item);
    } finally {
      _$AppSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDataSavingMode(bool item) {
    final _$actionInfo = _$AppSMStoreBaseActionController.startAction(
        name: 'AppSMStoreBase.setDataSavingMode');
    try {
      return super.setDataSavingMode(item);
    } finally {
      _$AppSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSoundEnabled(bool item) {
    final _$actionInfo = _$AppSMStoreBaseActionController.startAction(
        name: 'AppSMStoreBase.setSoundEnabled');
    try {
      return super.setSoundEnabled(item);
    } finally {
      _$AppSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDynamicColor(bool item) {
    final _$actionInfo = _$AppSMStoreBaseActionController.startAction(
        name: 'AppSMStoreBase.setDynamicColor');
    try {
      return super.setDynamicColor(item);
    } finally {
      _$AppSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsWeb(bool item) {
    final _$actionInfo = _$AppSMStoreBaseActionController.startAction(
        name: 'AppSMStoreBase.setIsWeb');
    try {
      return super.setIsWeb(item);
    } finally {
      _$AppSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWebMenu(bool item) {
    final _$actionInfo = _$AppSMStoreBaseActionController.startAction(
        name: 'AppSMStoreBase.setWebMenu');
    try {
      return super.setWebMenu(item);
    } finally {
      _$AppSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEnvironment(Environment item) {
    final _$actionInfo = _$AppSMStoreBaseActionController.startAction(
        name: 'AppSMStoreBase.setEnvironment');
    try {
      return super.setEnvironment(item);
    } finally {
      _$AppSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWhiteLabel(WhiteLabelEntity item) {
    final _$actionInfo = _$AppSMStoreBaseActionController.startAction(
        name: 'AppSMStoreBase.setWhiteLabel');
    try {
      return super.setWhiteLabel(item);
    } finally {
      _$AppSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedIndex(int item) {
    final _$actionInfo = _$AppSMStoreBaseActionController.startAction(
        name: 'AppSMStoreBase.setSelectedIndex');
    try {
      return super.setSelectedIndex(item);
    } finally {
      _$AppSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCountMessages(int item) {
    final _$actionInfo = _$AppSMStoreBaseActionController.startAction(
        name: 'AppSMStoreBase.setCountMessages');
    try {
      return super.setCountMessages(item);
    } finally {
      _$AppSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
themeMode: ${themeMode},
color: ${color},
dataSavingMode: ${dataSavingMode},
dynamicColor: ${dynamicColor},
soundEnabled: ${soundEnabled},
hideAmount: ${hideAmount},
isWeb: ${isWeb},
closeWebMenu: ${closeWebMenu},
visualDensity: ${visualDensity},
environment: ${environment},
whiteLabel: ${whiteLabel},
selectedIndex: ${selectedIndex},
countMessages: ${countMessages}
    ''';
  }
}
