import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../domain/entity/ecommerce_entity.dart';
import '../../products/domain/entity/product_ecommerce_entity.dart';
import '../../product_category/domain/entity/product_category_ecommerce_entity.dart';
part 'ecommerce_sm.g.dart';

class EcommerceSMStore = EcommerceSMStoreBase with _$EcommerceSMStore;

abstract class EcommerceSMStoreBase with Store {

  @observable
  EcommerceEntity? establishment;

  @observable
  ProductCategoryEcommerceEntity? productCategory;

  @observable
  ProductEcommerceEntity? product;

  @action
  void setProduct(ProductEcommerceEntity? item) {
    product = item;
  }

  @action
  void setProductCategory(ProductCategoryEcommerceEntity? item) {
    productCategory = item;
  }
  
  @observable
  int selectedIndex = 0;

  @observable
  Widget childGlobal = const SizedBox();

  @observable
  bool isWeb = false;

  @observable
  bool hideAmount = false;

  @observable
  bool showMenu = false;

  @action
  void setSelectedIndex(int item) {
    selectedIndex = item;
  }

  @action
  Widget setChildGlobal(Widget child) => childGlobal = child;

  @action
  bool setIsWeb(bool value) => isWeb = value;

  @action
  bool setIsHideAmount(bool value) => hideAmount = value;

  @action
  bool setShowMenu(bool value) => showMenu = value;

  @action
  void setEstablishment(EcommerceEntity item) {
    establishment = item;
  }
}
