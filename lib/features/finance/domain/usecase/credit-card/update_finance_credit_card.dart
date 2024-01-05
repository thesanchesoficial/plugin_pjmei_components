import '../../entity/finance_credit_card_entity.dart';

abstract class UpdateFinanceCreditCard {
  Future<bool> exec(FinanceCreditCardEntity params, {bool log = false});
}
