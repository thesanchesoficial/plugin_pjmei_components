import '../../entity/finance_credit_card_status_entity.dart';

abstract class GetFinanceCreditCardStatus {
  Future<List<FinanceCreditCardStatusEntity>> exec({bool log = false});
}
