import '../../entity/finance_credit_card_entity.dart';

abstract class CreateFinanceCreditCard {
  Future<bool> exec(FinanceCreditCardEntity params, {bool log = false});
}
