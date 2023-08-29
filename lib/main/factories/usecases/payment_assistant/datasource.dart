part of '../usecases.dart';

class _PaymentAssistantApi {

  Future<List<TransactionFinaceOpenedEntity>> list({required String id, required Map<String, dynamic> data}) {
    return makeRemoteTransactionsByDatePaymentAssistant(id).exec(data);
  }
}
