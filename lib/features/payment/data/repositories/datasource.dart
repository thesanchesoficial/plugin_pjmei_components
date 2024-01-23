part of '../../../../src/apis.dart';

class _PaymentApi {

  Future<CreditCardPaymentEntity> createCard({required String token}) {
    return makeRemoteCreateCreditCard().exec(token);
  }

}
