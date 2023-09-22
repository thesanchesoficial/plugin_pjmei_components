part of '../usecases.dart';

class _EcommerceApi {
  final vouchers = _VoucherEcommerceApi();
  final products = _ProductEcommerceApi();
  final productCategory = _ProductCategoryEcommerceApi();
  final orders = _VoucherEcommerceApi();
  final schedule = _ScheduleApi();

  Future<EcommerceEntity> find({required String id}) {
    return makeRemoteFindEcommerce(id).exec();
  }

  Future<EcommerceEntity> create({
    required String documentType,
    required String documentNumber,
    required String name,
    required String email,
    required String phone,
    required AddressEntity address,
    required BankAccountEntity bankAccount,
  }) {
    return makeRemoteAddEcommerce().exec({
      "documentType": documentType,
      "documentNumber": documentNumber,
      "name": name,
      "email": email,
      "phone": phone,
      "address": {
        "zipCode": address.zipCode,
        "state": address.state,
        "city": address.city,
        "street": address.street,
        "number": address.number,
        "latitude": address.latitude,
        "longitude": address.longitude,
        "nickname": address.nickname,
        "neighborhood": address.neighborhood,
        "complement": address.complement,
      },
      "bankAccount": {
        "bankCode": bankAccount.bankCode,
        "agency": bankAccount.agency,
        "dvAgency": bankAccount.dvAgency,
        "account": bankAccount.account,
        "dvAccount": bankAccount.dvAccount,
        "type": bankAccount.type,
      }
    });
  }

  Future<EcommerceEntity> update({required String id, required EcommerceEntity data}) {
    return makeRemoteUpdateEcommerce(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteEcommerce(id).exec();
  }

}
