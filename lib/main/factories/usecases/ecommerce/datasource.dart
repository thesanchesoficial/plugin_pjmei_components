part of '../usecases.dart';

class _EcommerceApi {
  final vouchers = _VoucherEcommerceApi();
  final products = _VoucherEcommerceApi();
  final orders = _VoucherEcommerceApi();

  Future<CompanyEntity> find({required String id}) {
    return makeRemoteFindCompany(id).exec();
  }

  Future<EstablishmentEntity> create({required Map<String, dynamic> data}) {
    return makeRemoteAddEcommerce().exec(data);
  }

  Future<EstablishmentEntity> update({required String id, required EstablishmentEntity data}) {
    return makeRemoteAddEcommerce().exec(data.toMap());
  }

  Future<EstablishmentEntity> remove({required Map<String, dynamic> data}) {
    return makeRemoteAddEcommerce().exec(data);
  }

  Future<RecipientEntity> findRecipient({required String id}) {
    return makeRemoteGetRecipient(id).exec();
  }
}
