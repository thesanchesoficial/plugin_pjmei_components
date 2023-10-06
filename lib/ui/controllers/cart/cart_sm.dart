import 'package:mobx/mobx.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
part 'cart_sm.g.dart';

class CartSMStore = CartSMStoreBase with _$CartSMStore;

abstract class CartSMStoreBase with Store {

  @observable
  OrderEcommerceEntity? order;

  @action
  void setOrder(OrderEcommerceEntity? item) {
    order = item;
  }

  @action
  void clearCart() {
    order = null;
  }

}
