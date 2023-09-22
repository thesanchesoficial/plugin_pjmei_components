// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module_sm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ModuleSMStore on ModuleSMStoreBase, Store {
  late final _$moduleAtom =
      Atom(name: 'ModuleSMStoreBase.module', context: context);

  @override
  ModulePjmei? get module {
    _$moduleAtom.reportRead();
    return super.module;
  }

  @override
  set module(ModulePjmei? value) {
    _$moduleAtom.reportWrite(value, super.module, () {
      super.module = value;
    });
  }

  late final _$modulesAtom =
      Atom(name: 'ModuleSMStoreBase.modules', context: context);

  @override
  List<ModulePjmei>? get modules {
    _$modulesAtom.reportRead();
    return super.modules;
  }

  @override
  set modules(List<ModulePjmei>? value) {
    _$modulesAtom.reportWrite(value, super.modules, () {
      super.modules = value;
    });
  }

  late final _$ModuleSMStoreBaseActionController =
      ActionController(name: 'ModuleSMStoreBase', context: context);

  @override
  void setModule(ModulePjmei? item) {
    final _$actionInfo = _$ModuleSMStoreBaseActionController.startAction(
        name: 'ModuleSMStoreBase.setModule');
    try {
      return super.setModule(item);
    } finally {
      _$ModuleSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addModule(ModulePjmei item) {
    final _$actionInfo = _$ModuleSMStoreBaseActionController.startAction(
        name: 'ModuleSMStoreBase.addModule');
    try {
      return super.addModule(item);
    } finally {
      _$ModuleSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeModule(ModulePjmei item) {
    final _$actionInfo = _$ModuleSMStoreBaseActionController.startAction(
        name: 'ModuleSMStoreBase.removeModule');
    try {
      return super.removeModule(item);
    } finally {
      _$ModuleSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteModules() {
    final _$actionInfo = _$ModuleSMStoreBaseActionController.startAction(
        name: 'ModuleSMStoreBase.deleteModules');
    try {
      return super.deleteModules();
    } finally {
      _$ModuleSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
module: ${module},
modules: ${modules}
    ''';
  }
}
