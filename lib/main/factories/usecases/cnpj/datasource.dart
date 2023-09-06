part of '../usecases.dart';

class _CnpjApi {

  Future<CnpjEntity> find({required String cnpj, bool ignoreAuth = false}) {
    return makeRemoteGetCnpj(cnpj, ignoreAuth: ignoreAuth).exec();
  }

  Future<CnpjEntity> update() {
    return makeRemotePutCnpj().exec();
  }

}