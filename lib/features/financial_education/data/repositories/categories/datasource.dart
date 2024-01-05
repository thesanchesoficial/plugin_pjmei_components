part of '../../../../../src/apis.dart';

class _FinancialEducationCategoriesApi {

  Future<CategoryFinancialEducationEntity> find({required String id, Map<String, dynamic>? query}) {
    return makeRemoteGetCategoryFinancialEducation(id: id, params: query).exec();
  }

  Future<CategoryFinancialEducationEntity> add({required CategoryFinancialEducationEntity data}) {
    return makeRemoteAddCategoryFinancialEducation().exec(data);
  }

  Future<CategoryFinancialEducationEntity> update({required String id, required CategoryFinancialEducationEntity data}) {
    return makeRemoteUpdateCategoryFinancialEducation(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteCategoryFinancialEducation(id).exec();
  }

  Future<List<CategoryFinancialEducationEntity>> list({Map<String, dynamic>? query}) {
    return makeRemoteGetListCategoriesFinancialEducation(params: query).exec();
  }
}
