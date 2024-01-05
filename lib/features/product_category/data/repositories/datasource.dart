part of '../../../../src/apis.dart';

class _ProductCategoryEcommerceApi {

  Future<ProductCategoryEcommerceEntity> find({required String id}) {
    return makeRemoteFindProductCategory(id).exec();
  }

  Future<List<ProductCategoryEcommerceEntity>> listByEcommerce({required String id}) {
    return makeRemoteListProductCategoryByEcommerce(id).exec();
  }

  Future<List<ProductCategoryEcommerceEntity>> listByEcommerceWithProducts({required String id}) {
    return makeRemoteListProductCategoryWithProductsByEcommerce(id).exec();
  }

  Future<ProductCategoryEcommerceEntity> insert({
    required String name,
    required int index,
    required String ecommerceId,
  }) {
    return makeRemoteAddProductCategory().exec({
      "name": name,
      "index": index,
      "ecommerceId": ecommerceId,
    });
  }

  Future<ProductCategoryEcommerceEntity> update({required String id, required ProductCategoryEcommerceEntity data}) {
    return makeRemoteUpdateProductCategory(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteProductCategory(id).exec();
  }
}