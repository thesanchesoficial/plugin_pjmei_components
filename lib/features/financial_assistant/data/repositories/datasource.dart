part of '../../../apis.dart';

class _FinancialAssistantApi {

  Future<List<FinancialAssistantEntity>> find({required String id}) {
    return makeRemoteListFinancialAssistant(id).exec();
  }

}