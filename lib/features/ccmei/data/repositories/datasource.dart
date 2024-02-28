part of '../../../apis.dart';

class _CcmeiApi {

  Future<CcmeiEntity> find() {
    return makeRemoteGetCcmei().exec();
  }

  Future<bool> update() {
    return makePutCcmei().exec();
  }

}