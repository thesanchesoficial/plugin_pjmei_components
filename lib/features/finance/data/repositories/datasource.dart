part of '../../../../src/apis.dart';

class _FinanceApi {

  Future<FinanceDashboardBasicEntity> listFinanceDashboardByFilterBasic({required String id, required FinanceFilterEntity filter}) {
    return makeRemoteListFinanceDashboardByFilterBasic(id).exec(filter);
  }

  Future<FinanceDashboardBasicEntity> listFinanceDashboardBasic({required String id, Map<String, dynamic>? params}) {
    return makeRemoteListFinanceDashboardBasic(id, params: params).exec();
  }

  Future<List<FinanceCreditCardCategoryEntity>> listFinanceCreditCardCategory({required String id, Map<String, dynamic>? params}) {
    return makeRemoteListFinanceCreditCardCategory().exec();
  }

  Future<List<FinanceCategoryEntity>> listFinanceCategory({required String type}) {
    return makeRemoteListFinanceCategory(type).exec();
  }

  Future<List<FinanceBankInstitutionEntity>> listFinanceBankInstitution({required String type}) {
    return makeRemoteListFinanceBankInstitution().exec();
  }

  Future<num> getRevenue({required String id, Map<String, dynamic>? params}) {
    return makeRemoteGetRevenue(id, params: params).exec();
  }

  Future<FinanceTransactionEntity> putFinanceTransactions({required String id, Map<String, dynamic>? params, required FinanceTransactionEntity body}) {
    return makeRemotePutFinanceTransactions(id, params: params).exec(body);
  }

  Future<FinanceTransactionEntity> postFinanceTransactions({required FinanceTransactionEntity body}) {
    return makeRemotePostFinanceTransactions().exec(body);
  }

  Future<List<FinanceTransactionEntity>> listFinanceTransactionsSearch({required String id, Map<String, dynamic>? params}) {
    return makeRemoteListFinanceTransactionsSearch(id, params: params).exec();
  }

  Future<FinanceTransactionDataEntity> listFinanceTransactions({required String id, Map<String, dynamic>? params}) {
    return makeRemoteListFinanceTransactions(id, params: params).exec();
  }

  Future<FinanceTransactionDataEntity> listFinanceByFilterTransactions({required String id, required FinanceFilterEntity filter}) {
    return makeRemoteListFinanceByFilterTransactions(id).exec(filter);
  }

  Future<FinanceTransactionEntity> getFinanceTransactions({required String id}) {
    return makeRemoteGetFinanceTransactions(id).exec();
  }

  Future<bool> deleteFinanceTransactions({required String id,  Map<String, dynamic>? params}) {
    return makeRemoteDeleteFinanceTransactions(id, params: params).exec();
  }

  Future<Map<String, dynamic>> getTransactionReportFactory({required String id, Map<String, dynamic>? params, required FinanceReportEntity filter}) {
    return makeRemoteGetTransactionReportFactory(id, params: params).exec(filter);
  }

  Future<List<FinanceResultReportEntity>> getProfitLossReportFactory({required String id, Map<String, dynamic>? params, required FinanceReportEntity filter}) {
    return makeRemoteGetProfitLossReportFactory(id, params: params).exec(filter);
  }

  Future<List<FinanceResultReportEntity>> getCashFlowReportFactory({required String id, Map<String, dynamic>? params, required FinanceReportEntity filter}) {
    return makeRemoteGetCashFlowReportFactory(id, params: params).exec(filter);
  }

  Future<Map<String, dynamic>> getBehaviorAverageMonthlyReportFactory({required String id, required String type, Map<String, dynamic>? params, required FinanceReportEntity filter}) {
    return makeRemoteGetBehaviorAverageMonthlyReportFactory(id, type, params: params).exec(filter);
  }

  Future<Map<String, dynamic>> getBalanceEvolutionReportFactory({required String id, Map<String, dynamic>? params, required FinanceReportEntity filter}) {
    return makeRemoteGetBalanceEvolutionReportFactory(id, params: params).exec(filter);
  }

  Future<Map<String, dynamic>> getAllCategoriesReportFactory({required String id, Map<String, dynamic>? params, required FinanceReportEntity filter}) {
    return makeRemoteGetAllCategoriesReportFactory(id, params: params).exec(filter);
  }

}
