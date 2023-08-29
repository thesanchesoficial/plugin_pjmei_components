part of '../usecases.dart';

class _ModuleApi {

  // Future<CompanyEntity> find({required String id}) {
  //   return makeRemoteFindCompany(id).exec();
  // }

  Future<List<ModulePjmei>> list({required Map<String, dynamic> params}) {
    return makeRemoteGetListModules(params: params).exec();
  }

  Future<List<ModulePjmei>> listAll({required Map<String, dynamic> params}) {
    return makeRemoteListAllModules(params).exec();
  }

  // Future<ModulePjmei> insert({required ModulePjmei data}) {
  //   return makeRemoteAddVoucher().exec(data);
  // }

  Future<ModulePjmei> update({required String id, required ModulePjmei data}) {
    return makeRemoteUpdateModule(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteModule(id).exec();
  }
}