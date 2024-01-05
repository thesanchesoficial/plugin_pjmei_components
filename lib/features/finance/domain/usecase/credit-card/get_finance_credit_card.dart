import '../../entity/finance_credit_card_entity.dart';

abstract class GetFinanceCreditCard {
  Future<List<FinanceCreditCardEntity>> exec({bool log = false});
}
