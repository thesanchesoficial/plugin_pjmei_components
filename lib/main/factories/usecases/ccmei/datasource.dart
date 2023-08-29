part of '../usecases.dart';

class _CcmeiApi {

  Future<CcmeiEntity> find({required String cnpj}) {
    return makeRemoteGetCcmei(cnpj).exec();
  }

}