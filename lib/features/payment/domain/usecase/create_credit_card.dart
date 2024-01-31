import '../entity/credit_card_entity.dart';

abstract class CreateCreditCard {
  Future<CreditCardPaymentEntity> exec({
    required String token,
    required String city,
    String? complement,
    String? number,
    required String neighborhood,
    required String state,
    required String street,
    required String zipCode,
    bool log = false,
  });
}
