// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_sm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CartSMStore on CartSMStoreBase, Store {
  late final _$productsAtom =
      Atom(name: 'CartSMStoreBase.products', context: context);

  @override
  List<OrderProductsEntity> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(List<OrderProductsEntity> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  late final _$buyTooAtom =
      Atom(name: 'CartSMStoreBase.buyToo', context: context);

  @override
  List<ProductEcommerceEntity> get buyToo {
    _$buyTooAtom.reportRead();
    return super.buyToo;
  }

  @override
  set buyToo(List<ProductEcommerceEntity> value) {
    _$buyTooAtom.reportWrite(value, super.buyToo, () {
      super.buyToo = value;
    });
  }

  late final _$ecommerceAtom =
      Atom(name: 'CartSMStoreBase.ecommerce', context: context);

  @override
  EcommerceEntity? get ecommerce {
    _$ecommerceAtom.reportRead();
    return super.ecommerce;
  }

  @override
  set ecommerce(EcommerceEntity? value) {
    _$ecommerceAtom.reportWrite(value, super.ecommerce, () {
      super.ecommerce = value;
    });
  }

  late final _$addressAtom =
      Atom(name: 'CartSMStoreBase.address', context: context);

  @override
  AddressEntity? get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(AddressEntity? value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  late final _$voucherAtom =
      Atom(name: 'CartSMStoreBase.voucher', context: context);

  @override
  VoucherEntity? get voucher {
    _$voucherAtom.reportRead();
    return super.voucher;
  }

  @override
  set voucher(VoucherEntity? value) {
    _$voucherAtom.reportWrite(value, super.voucher, () {
      super.voucher = value;
    });
  }

  late final _$totalAtom =
      Atom(name: 'CartSMStoreBase.total', context: context);

  @override
  num get total {
    _$totalAtom.reportRead();
    return super.total;
  }

  @override
  set total(num value) {
    _$totalAtom.reportWrite(value, super.total, () {
      super.total = value;
    });
  }

  late final _$subtotalAtom =
      Atom(name: 'CartSMStoreBase.subtotal', context: context);

  @override
  num get subtotal {
    _$subtotalAtom.reportRead();
    return super.subtotal;
  }

  @override
  set subtotal(num value) {
    _$subtotalAtom.reportWrite(value, super.subtotal, () {
      super.subtotal = value;
    });
  }

  late final _$changeAtom =
      Atom(name: 'CartSMStoreBase.change', context: context);

  @override
  num get change {
    _$changeAtom.reportRead();
    return super.change;
  }

  @override
  set change(num value) {
    _$changeAtom.reportWrite(value, super.change, () {
      super.change = value;
    });
  }

  late final _$deliveryFeeAtom =
      Atom(name: 'CartSMStoreBase.deliveryFee', context: context);

  @override
  num get deliveryFee {
    _$deliveryFeeAtom.reportRead();
    return super.deliveryFee;
  }

  @override
  set deliveryFee(num value) {
    _$deliveryFeeAtom.reportWrite(value, super.deliveryFee, () {
      super.deliveryFee = value;
    });
  }

  late final _$serviceFeeAtom =
      Atom(name: 'CartSMStoreBase.serviceFee', context: context);

  @override
  num get serviceFee {
    _$serviceFeeAtom.reportRead();
    return super.serviceFee;
  }

  @override
  set serviceFee(num value) {
    _$serviceFeeAtom.reportWrite(value, super.serviceFee, () {
      super.serviceFee = value;
    });
  }

  late final _$serviceLocationAtom =
      Atom(name: 'CartSMStoreBase.serviceLocation', context: context);

  @override
  String get serviceLocation {
    _$serviceLocationAtom.reportRead();
    return super.serviceLocation;
  }

  @override
  set serviceLocation(String value) {
    _$serviceLocationAtom.reportWrite(value, super.serviceLocation, () {
      super.serviceLocation = value;
    });
  }

  late final _$typeAtom = Atom(name: 'CartSMStoreBase.type', context: context);

  @override
  String get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(String value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  late final _$paymentTypeAtom =
      Atom(name: 'CartSMStoreBase.paymentType', context: context);

  @override
  String get paymentType {
    _$paymentTypeAtom.reportRead();
    return super.paymentType;
  }

  @override
  set paymentType(String value) {
    _$paymentTypeAtom.reportWrite(value, super.paymentType, () {
      super.paymentType = value;
    });
  }

  late final _$paymentMethodAtom =
      Atom(name: 'CartSMStoreBase.paymentMethod', context: context);

  @override
  String get paymentMethod {
    _$paymentMethodAtom.reportRead();
    return super.paymentMethod;
  }

  @override
  set paymentMethod(String value) {
    _$paymentMethodAtom.reportWrite(value, super.paymentMethod, () {
      super.paymentMethod = value;
    });
  }

  late final _$cardIdAtom =
      Atom(name: 'CartSMStoreBase.cardId', context: context);

  @override
  String? get cardId {
    _$cardIdAtom.reportRead();
    return super.cardId;
  }

  @override
  set cardId(String? value) {
    _$cardIdAtom.reportWrite(value, super.cardId, () {
      super.cardId = value;
    });
  }

  late final _$last4DigitsOfTheCreditCardAtom = Atom(
      name: 'CartSMStoreBase.last4DigitsOfTheCreditCard', context: context);

  @override
  String? get last4DigitsOfTheCreditCard {
    _$last4DigitsOfTheCreditCardAtom.reportRead();
    return super.last4DigitsOfTheCreditCard;
  }

  @override
  set last4DigitsOfTheCreditCard(String? value) {
    _$last4DigitsOfTheCreditCardAtom
        .reportWrite(value, super.last4DigitsOfTheCreditCard, () {
      super.last4DigitsOfTheCreditCard = value;
    });
  }

  late final _$startDateAtom =
      Atom(name: 'CartSMStoreBase.startDate', context: context);

  @override
  String? get startDate {
    _$startDateAtom.reportRead();
    return super.startDate;
  }

  @override
  set startDate(String? value) {
    _$startDateAtom.reportWrite(value, super.startDate, () {
      super.startDate = value;
    });
  }

  late final _$documentAtom =
      Atom(name: 'CartSMStoreBase.document', context: context);

  @override
  String? get document {
    _$documentAtom.reportRead();
    return super.document;
  }

  @override
  set document(String? value) {
    _$documentAtom.reportWrite(value, super.document, () {
      super.document = value;
    });
  }

  late final _$CartSMStoreBaseActionController =
      ActionController(name: 'CartSMStoreBase', context: context);

  @override
  void setProductInCart(OrderProductsEntity item) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setProductInCart');
    try {
      return super.setProductInCart(item);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setProductInBuyToo(ProductEcommerceEntity item) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setProductInBuyToo');
    try {
      return super.setProductInBuyToo(item);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVoucher(VoucherEntity? item) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setVoucher');
    try {
      return super.setVoucher(item);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddress(AddressEntity item) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setAddress');
    try {
      return super.setAddress(item);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEstablishment(EcommerceEntity item) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setEstablishment');
    try {
      return super.setEstablishment(item);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTotal(num value) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setTotal');
    try {
      return super.setTotal(value);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSubtotal(num value) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setSubtotal');
    try {
      return super.setSubtotal(value);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setChange(num value) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setChange');
    try {
      return super.setChange(value);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDeliveryFee(num value) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setDeliveryFee');
    try {
      return super.setDeliveryFee(value);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setServiceFee(num value) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setServiceFee');
    try {
      return super.setServiceFee(value);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCardId(String? value) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setCardId');
    try {
      return super.setCardId(value);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLast4DigitsOfTheCreditCard(String? value) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setLast4DigitsOfTheCreditCard');
    try {
      return super.setLast4DigitsOfTheCreditCard(value);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setStartDate(String? value) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setStartDate');
    try {
      return super.setStartDate(value);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDocument(String? value) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setDocument');
    try {
      return super.setDocument(value);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setServiceLocation(String value) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setServiceLocation');
    try {
      return super.setServiceLocation(value);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setType(String value) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setType');
    try {
      return super.setType(value);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPaymentType(String value) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setPaymentType');
    try {
      return super.setPaymentType(value);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPaymentMethod(String value) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.setPaymentMethod');
    try {
      return super.setPaymentMethod(value);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initCart(
      {required EcommerceEntity store,
      required List<OrderProductsEntity> items,
      required String typeCart}) {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.initCart');
    try {
      return super.initCart(store: store, items: items, typeCart: typeCart);
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calculateCart() {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.calculateCart');
    try {
      return super.calculateCart();
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
  void clearVoucher() {
    final _$actionInfo = _$CartSMStoreBaseActionController.startAction(
        name: 'CartSMStoreBase.clearVoucher');
    try {
      return super.clearVoucher();
    } finally {
      _$CartSMStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
products: ${products},
buyToo: ${buyToo},
ecommerce: ${ecommerce},
address: ${address},
voucher: ${voucher},
total: ${total},
subtotal: ${subtotal},
change: ${change},
deliveryFee: ${deliveryFee},
serviceFee: ${serviceFee},
serviceLocation: ${serviceLocation},
type: ${type},
paymentType: ${paymentType},
paymentMethod: ${paymentMethod},
cardId: ${cardId},
last4DigitsOfTheCreditCard: ${last4DigitsOfTheCreditCard},
startDate: ${startDate},
document: ${document}
    ''';
  }
}
