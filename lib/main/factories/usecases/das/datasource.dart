part of '../usecases.dart';

class _DasApi {

  Future<List<DasItemEntity>> list({required String cnpj, Map<String, dynamic>? params}) {
    return makeGetListDas(cnpj, params: params).exec();
  }

  Future<List<DasItemEntity>> update({required String cnpj, Map<String, dynamic>? params}) {
    return makeUpdateListDas(cnpj, params: params).exec();
  }

}