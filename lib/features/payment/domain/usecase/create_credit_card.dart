import '../entity/credit_card_entity.dart';

abstract class CreateCreditCard {
  Future<CreditCardPaymentEntity> exec(String token, {bool log = false});
}
