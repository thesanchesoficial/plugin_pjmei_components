part of '../../../../../src/apis.dart';

class _FinancialEducationVideosApi {

  Future<VideoFinancialEducationEntity> find({required String id, Map<String, dynamic>? query}) {
    return makeRemoteGetVideoFinancialEducation(id: id, params: query).exec();
  }

  Future<VideoFinancialEducationEntity> add({required VideoFinancialEducationEntity data}) {
    return makeRemoteAddVideoFinancialEducation().exec(data);
  }

  Future<VideoFinancialEducationEntity> update({required String id, required VideoFinancialEducationEntity data}) {
    return makeRemoteUpdateVideoFinancialEducation(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteVideoFinancialEducation(id).exec();
  }

  Future<List<VideoFinancialEducationEntity>> list({required Map<String, dynamic> query}) {
    return makeRemoteListVideosFinancialEducation(query).exec();
  }

  Future<List<VideoFinancialEducationEntity>> listByCategory({required String id, Map<String, dynamic>? query}) {
    return makeRemoteGetListVideosByCategoryFinancialEducation(id: id, params: query).exec();
  }
}
