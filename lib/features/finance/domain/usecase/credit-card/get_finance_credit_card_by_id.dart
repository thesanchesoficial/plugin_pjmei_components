import '../../entity/finance_credit_card_entity.dart';

abstract class GetFinanceCreditCardById {
  Future<FinanceCreditCardEntity> exec({bool log = false});
}
