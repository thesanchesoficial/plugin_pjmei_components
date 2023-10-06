// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_sm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CartSMStore on CartSMStoreBase, Store {
  late final _$orderAtom =
      Atom(name: 'CartSMStoreBase.order', context: context);

  @override
  OrderEcommerceEntity? get order {
    _$orderAtom.reportRead();
    return super.order;
  }

  @override
  set order(OrderEcommerceEntity? value) {
    _$orderAtom.reportWrite(value, super.order, () {
      super.order = value;
    });
  }

  late final _$CartSMStoreBaseActionController =
      ActionController(name: 'CartSMStoreBase', context: context);

  @override
  void setOrder(OrderEcommerceEntity? item) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setOrder');
    try {
      return super.setOrder(item);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearCart() {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.clearCart');
    try {
      return super.clearCart();
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
order: ${order}
    ''';
  }
}
