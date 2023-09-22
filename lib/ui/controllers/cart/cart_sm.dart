import 'package:mobx/mobx.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
part 'cart_sm.g.dart';

class CartSMStore = CartSMStoreBase with _$CartSMStore;

abstract class CartSMStoreBase with Store {

  @observable
  List<ProductEcommerceEntity> products = [];

  @observable
  List<ProductEcommerceEntity> buyToo = [];

  @observable
  EcommerceEntity? ecommerce;

  @observable
  VoucherEntity? voucher;

  @action
  void addProductInCart(ProductEcommerceEntity item) {
    products.add(item);
  }

  @action
  void addProductInBuyToo(ProductEcommerceEntity item) {
    buyToo.add(item);
  }

  @action
  void addVoucher(VoucherEntity item) {
    voucher = item;
  }

  @action
  void clearCart() {
    products = [];
    buyToo = [];
    ecommerce = null;
    voucher = null;
  }

  @action
  void clearVoucher() {
    voucher = null;
  }

  @action
  void setEstablishment(EcommerceEntity item) {
    ecommerce = item;
  }

}
