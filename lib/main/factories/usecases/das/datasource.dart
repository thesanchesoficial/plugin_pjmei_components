part of '../usecases.dart';

class _DasApi {

  Future<List<DasItemEntity>> list({Map<String, dynamic>? params}) {
    return makeGetListDas(params: params).exec();
  }

  Future<List<DasItemEntity>> update({Map<String, dynamic>? params}) {
    return makeUpdateListDas(params: params).exec();
  }

}