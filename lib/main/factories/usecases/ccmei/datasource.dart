part of '../usecases.dart';

class _CcmeiApi {

  Future<CcmeiEntity> find() {
    return makeRemoteGetCcmei().exec();
  }

  Future<bool> update() {
    return makePutCcmei().exec();
  }

}