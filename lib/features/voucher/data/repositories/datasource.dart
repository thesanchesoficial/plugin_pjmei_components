part of '../../../../src/apis.dart';

class _VoucherEcommerceApi {

  Future<List<VoucherEntity>> listByEcommerce({required Map<String, dynamic> params}) {
    return makeRemoteListVouchersByEstablishment(params).exec();
  }

  Future<VoucherEntity> insert({required VoucherEntity data}) {
    return makeRemoteAddVoucher().exec(data);
  }

  Future<VoucherEntity> update({required String id, required VoucherEntity data}) {
    return makeRemoteUpdateVoucher(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteVoucher(id).exec();
  }
}