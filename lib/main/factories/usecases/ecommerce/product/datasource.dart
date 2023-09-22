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
    required int index,
    required String ecommerceId,
  }) {
    return makeRemoteAddProduct().exec({
      "name": name,
      "index": index,
      "ecommerceId": ecommerceId,
    });
  }

  Future<ProductEcommerceEntity> update({required String id, required ProductEcommerceEntity data}) {
    return makeRemoteUpdateProduct(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteProduct(id).exec();
  }
}