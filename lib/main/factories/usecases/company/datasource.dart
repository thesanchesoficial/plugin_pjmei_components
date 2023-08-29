part of '../usecases.dart';

class _CompanyApi {

  Future<CompanyEntity> find({required String id}) {
    return makeRemoteFindCompany(id).exec();
  }

  Future<BasicDashboardEntity> dashboard({required String id}) {
    return makeRemoteDashboard(id).exec();
  }

  Future<List<FinancialAssistantEntity>> financialAssistant({required String id}) {
    return makeRemoteListFinancialAssistant(id).exec();
  }

  Future<List<CompanyEntity>> listByUser({required String id, Map<String, dynamic>? params}) {
    return makeRemoteGetListCompanies(id: id, params: params).exec();
  }

  Future<ListCompanyResult> listAll({required Map<String, dynamic> params}) {
    return makeRemoteListBusiness(params).exec();
  }

  Future<bool> register({required Map<String, dynamic> body}) {
    return makeRemoteInsertCompany().exec(body);
  }

  Future<CompanyEntity> update({required String id, required CompanyEntity data}) {
    return makeRemoteUpdateCompany(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteCompany(id).exec();
  }
}