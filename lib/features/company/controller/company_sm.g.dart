// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_sm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CompanySMStore on CompanySMStoreBase, Store {
  late final _$companyAtom =
      Atom(name: 'CompanySMStoreBase.company', context: context);

  @override
  CompanyEntity? get company {
    _$companyAtom.reportRead();
    return super.company;
  }

  @override
  set company(CompanyEntity? value) {
    _$companyAtom.reportWrite(value, super.company, () {
      super.company = value;
    });
  }

  late final _$subscriptionAtom =
      Atom(name: 'CompanySMStoreBase.subscription', context: context);

  @override
  SubscriptionEntity? get subscription {
    _$subscriptionAtom.reportRead();
    return super.subscription;
  }

  @override
  set subscription(SubscriptionEntity? value) {
    _$subscriptionAtom.reportWrite(value, super.subscription, () {
      super.subscription = value;
    });
  }

  late final _$basicDataAtom =
      Atom(name: 'CompanySMStoreBase.basicData', context: context);

  @override
  BasicDashboardEntity? get basicData {
    _$basicDataAtom.reportRead();
    return super.basicData;
  }

  @override
  set basicData(BasicDashboardEntity? value) {
    _$basicDataAtom.reportWrite(value, super.basicData, () {
      super.basicData = value;
    });
  }

  late final _$widgetsAtom =
      Atom(name: 'CompanySMStoreBase.widgets', context: context);

  @override
  List<InstalledWidget>? get widgets {
    _$widgetsAtom.reportRead();
    return super.widgets;
  }

  @override
  set widgets(List<InstalledWidget>? value) {
    _$widgetsAtom.reportWrite(value, super.widgets, () {
      super.widgets = value;
    });
  }

  late final _$hideAmountAtom =
      Atom(name: 'CompanySMStoreBase.hideAmount', context: context);

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

  late final _$selectedIndexAtom =
      Atom(name: 'CompanySMStoreBase.selectedIndex', context: context);

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

  late final _$CompanySMStoreBaseActionController =
      ActionController(name: 'CompanySMStoreBase', context: context);

  @override
  void setEstablishment(CompanyEntity item) {
    final _$actionInfo = _$CompanySMStoreBaseActionController.startAction(
        name: 'CompanySMStoreBase.setEstablishment');
    try {
      return super.setEstablishment(item);
    } finally {
      _$CompanySMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSubscription(SubscriptionEntity? item) {
    final _$actionInfo = _$CompanySMStoreBaseActionController.startAction(
        name: 'CompanySMStoreBase.setSubscription');
    try {
      return super.setSubscription(item);
    } finally {
      _$CompanySMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addWidgets(InstalledWidget item) {
    final _$actionInfo = _$CompanySMStoreBaseActionController.startAction(
        name: 'CompanySMStoreBase.addWidgets');
    try {
      return super.addWidgets(item);
    } finally {
      _$CompanySMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeWidgets(InstalledWidget item) {
    final _$actionInfo = _$CompanySMStoreBaseActionController.startAction(
        name: 'CompanySMStoreBase.removeWidgets');
    try {
      return super.removeWidgets(item);
    } finally {
      _$CompanySMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteWidgets() {
    final _$actionInfo = _$CompanySMStoreBaseActionController.startAction(
        name: 'CompanySMStoreBase.deleteWidgets');
    try {
      return super.deleteWidgets();
    } finally {
      _$CompanySMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBasicData(BasicDashboardEntity item) {
    final _$actionInfo = _$CompanySMStoreBaseActionController.startAction(
        name: 'CompanySMStoreBase.setBasicData');
    try {
      return super.setBasicData(item);
    } finally {
      _$CompanySMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool setIsHideAmount(bool value) {
    final _$actionInfo = _$CompanySMStoreBaseActionController.startAction(
        name: 'CompanySMStoreBase.setIsHideAmount');
    try {
      return super.setIsHideAmount(value);
    } finally {
      _$CompanySMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedIndex(int item) {
    final _$actionInfo = _$CompanySMStoreBaseActionController.startAction(
        name: 'CompanySMStoreBase.setSelectedIndex');
    try {
      return super.setSelectedIndex(item);
    } finally {
      _$CompanySMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
company: ${company},
subscription: ${subscription},
basicData: ${basicData},
widgets: ${widgets},
hideAmount: ${hideAmount},
selectedIndex: ${selectedIndex}
    ''';
  }
}
