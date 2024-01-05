part of '../../../../src/apis.dart';

class _PaymentApi {

  Future<String> createCard({required String token}) {
    return makeRemoteCreateCreditCard().exec(token);
  }

}
