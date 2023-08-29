part of '../usecases.dart';

class _CnpjApi {

  Future<CnpjEntity> find({required String cnpj}) {
    return makeRemoteGetCnpj(cnpj).exec();
  }

  Future<CnpjEntity> update({required String cnpj}) {
    return makeRemotePutCnpj(cnpj).exec();
  }

}