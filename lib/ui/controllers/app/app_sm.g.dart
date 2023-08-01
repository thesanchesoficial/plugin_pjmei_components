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

  late final _$AppSMStoreBaseActionController =
      ActionController(name: 'AppSMStoreBase', context: context);

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
  String toString() {
    return '''
themeMode: ${themeMode},
color: ${color},
dataSavingMode: ${dataSavingMode},
environment: ${environment},
selectedIndex: ${selectedIndex}
    ''';
  }
}
