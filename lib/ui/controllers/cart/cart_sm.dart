import 'package:mobx/mobx.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
part 'cart_sm.g.dart';

class CartSMStore = CartSMStoreBase with _$CartSMStore;

abstract class CartSMStoreBase with Store {

  @observable
  List<OrderProductsEntity> products = [];

  @observable
  List<ProductEcommerceEntity> buyToo = [];

  @observable
  EcommerceEntity? ecommerce;

  @observable
  AddressEntity? address;

  @observable
  VoucherEntity? voucher;

  @observable
  num total = 0;

  @observable
  num subtotal = 0;

  @observable
  num change = 0;

  @observable
  num deliveryFee = 0;

  @observable
  num serviceFee = 0;

  @observable
  String serviceLocation = 'online';

  @observable
  String type = 'service';

  @observable
  String paymentType = 'online';

  @observable
  String paymentMethod = 'pix';

  @observable
  String? cardId;

  @observable
  String? last4DigitsOfTheCreditCard;

  @observable
  String? startDate;

  @observable
  String? document;

  @action
  void setProductInCart(OrderProductsEntity item) {
    products.add(item);
  }

  @action
  void setProductInBuyToo(ProductEcommerceEntity item) {
    buyToo.add(item);
  }

  @action
  void setVoucher(VoucherEntity? item) {
    voucher = item;
  }

  @action
  void setAddress(AddressEntity item) {
    address = item;
  }

  @action
  void setEstablishment(EcommerceEntity item) {
    ecommerce = item;
  }

  @action
  void setTotal(num value) {
    total = value;
  }

  @action
  void setSubtotal(num value) {
    subtotal = value;
  }

  @action
  void setChange(num value) {
    change = value;
  }

  @action
  void setDeliveryFee(num value) {
    deliveryFee = value;
  }

  @action
  void setServiceFee(num value) {
    serviceFee = value;
  }

  @action
  void setCardId(String? value) {
    cardId = value;
  }

  @action
  void setLast4DigitsOfTheCreditCard(String? value) {
    last4DigitsOfTheCreditCard = value;
  }

  @action
  void setStartDate(String? value) {
    startDate = value;
  }

  @action
  void setDocument(String? value) {
    document = value;
  }

  @action
  void setServiceLocation(String value) {
    serviceLocation = value;
  }

  @action
  void setType(String value) {
    type = value;
  }

  @action
  void setPaymentType(String value) {
    paymentType = value;
  }

  @action
  void setPaymentMethod(String value) {
    paymentMethod = value;
  }

  @action
  void initCart({
    required EcommerceEntity store,
    required List<OrderProductsEntity> items,
    required String typeCart,
  }) {
    products = items;
    ecommerce = store;
    type = typeCart;
    address = store.address;
  }

  @action
  void calculateCart() {
    // 
  }

  @action
  void clearCart() {
    products = [];
    buyToo = [];
    ecommerce = null;
    address = null;
    voucher = null;
    startDate = null;
    document = null;
    last4DigitsOfTheCreditCard = null;
    cardId = null;
    total = 0;
    subtotal = 0;
    change = 0;
    deliveryFee = 0;
    serviceFee = 0;
    serviceLocation = 'online';
    type = 'service';
    paymentType = 'online';
    paymentMethod = 'pix';
  }

  @action
  void clearVoucher() {
    voucher = null;
  }

}
