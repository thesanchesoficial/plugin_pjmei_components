part of '../usecases.dart';

class _DasnApi {

  Future<List<DasnItemEntity>> list({required String cnpj, Map<String, dynamic>? params}) {
    return makeGetListDasn(cnpj, params: params).exec();
  }

  Future<DasnItemEntity> insert({required String cnpj, Map<String, dynamic>? query, required DasnDeclaration data}) {
    return makePostDasn(cnpj, params: query).exec(data);
  }

}