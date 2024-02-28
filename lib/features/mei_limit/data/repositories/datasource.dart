part of '../../../apis.dart';

class _MeiLimitApi {

  Future<num> get(String id, {Map<String, dynamic>? params}) {
    return makeRemoteGetMeiLimit(id, params: params).exec();
  }

}
