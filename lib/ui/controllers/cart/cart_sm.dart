import 'package:mobx/mobx.dart';
import 'package:plugin_pjmei_components/domain/entities/establishment/establishment_entity.dart';
import 'package:plugin_pjmei_components/domain/entities/product/product_entity.dart';
import 'package:plugin_pjmei_components/domain/entities/voucher/voucher_entity.dart';
part 'cart_sm.g.dart';

class CartSMStore = CartSMStoreBase with _$CartSMStore;

abstract class CartSMStoreBase with Store {

  @observable
  List<ProductEntity> products = [];

  @observable
  List<ProductEntity> buyToo = [];

  @observable
  EstablishmentEntity? establishment;

  @observable
  VoucherEntity? voucher;

  @action
  void addProductInCart(ProductEntity item) {
    products.add(item);
  }

  @action
  void addProductInBuyToo(ProductEntity item) {
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
    establishment = null;
    voucher = null;
  }

  @action
  void clearVoucher() {
    voucher = null;
  }

  @action
  void setEstablishment(EstablishmentEntity item) {
    establishment = item;
  }

}
