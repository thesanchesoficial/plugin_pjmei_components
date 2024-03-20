part of '../../../apis.dart';

class _CnpjApi {

  Future<CnpjEntity> find({required String cnpj, bool ignoreAuth = false}) {
    return makeRemoteGetCnpj(cnpj, ignoreAuth: ignoreAuth).exec();
  }

}