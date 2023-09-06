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

  Future<bool> register({
    required String fantasyName,
    required String corporateName,
    required String documentType,
    required String documentNumber,
    required String phone,
    required String email,
    required String type,
    String? logo,
    String? description,
    String? color,
  }) {
    return makeRemoteInsertCompany().exec(<String, dynamic>{
      "fantasyName": fantasyName,
      "corporateName": corporateName,
      "documentType": documentType,
      "documentNumber": documentNumber,
      "phone": phone,
      "email": email,
      "type": type,
      "logo": logo,
      "description": description,
      "color": color,
    });
  }

  Future<CompanyEntity> update({required String id, required CompanyEntity data}) {
    return makeRemoteUpdateCompany(id).exec(data);
  }

  Future<bool> delete({required String id}) {
    return makeRemoteDeleteCompany(id).exec();
  }
}