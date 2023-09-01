part of '../usecases.dart';

class _CnpjApi {

  Future<CnpjEntity> find() {
    return makeRemoteGetCnpj().exec();
  }

  Future<CnpjEntity> update() {
    return makeRemotePutCnpj().exec();
  }

}