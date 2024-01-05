part of '../../../../src/apis.dart';

class _AddressApi {

  Future<AddressEntity> find({required String id}) {
    return makeRemoteFindAddress(id).exec();
  }

  Future<List<AddressEntity>> listByUser({required String id}) {
    return makeRemoteGetListAddressByUser(id).exec();
  }

  Future<AddressEntity> register({
    required String zipCode,
    required String state,
    required String city,
    required String street,
    String? number,
    required String latitude,
    required String longitude,
    String? nickname,
    required String neighborhood,
    String? complement,
    bool? main,
  }) {
    return makeRemoteAddAddress().exec({
      "main": main ?? false,
      "zipCode": zipCode,
      "state": state,
      "city": city,
      "street": street,
      "number": number,
      "latitude": latitude,
      "longitude": longitude,
      "nickname": nickname,
      "neighborhood": neighborhood,
      "complement": complement,
    });
  }

  Future<AddressEntity> update({required AddressEntity data}) {
    return makeRemoteUpdateAddress(data.id!).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteAddress(id).exec();
  }
}