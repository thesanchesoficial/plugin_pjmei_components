part of '../../usecases.dart';

class _ProductEcommerceApi {

  Future<ProductEcommerceEntity> find({required String id}) {
    return makeRemoteFindProduct(id).exec();
  }
  
  Future<List<ProductEcommerceEntity>> listByEcommerce({required String id}) {
    return makeRemoteListProductByEcommerce(id).exec();
  }

  Future<ProductEcommerceEntity> insert({
    required String name,
    required String ecommerceId,
    required String description,
    required String type,
    required String productCategoryId,
    required bool highlight,
    required bool legalAge,
  }) {
    return makeRemoteAddProduct().exec({
      "name": name,
      "ecommerceId": ecommerceId,
      "description": description,
      "type": type,
      "productCategoryId": productCategoryId,
      "highlight": highlight,
      "legalAge": legalAge,
    });
  }

  Future<ProductEcommerceEntity> update({required String id, required ProductEcommerceEntity data}) {
    return makeRemoteUpdateProduct(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteProduct(id).exec();
  }
}