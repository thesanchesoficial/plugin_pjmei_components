part of '../usecases.dart';

class _DasnApi {

  Future<List<DasnItemEntity>> list({Map<String, dynamic>? params}) {
    return makeGetListDasn(params: params).exec();
  }

  Future<bool> insert({Map<String, dynamic>? query, required DasnDeclaration data}) {
    return makePostDasn(params: query).exec(data);
  }

}