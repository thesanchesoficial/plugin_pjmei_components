part of '../../../apis.dart';

class _PaymentApi {

  Future<CreditCardPaymentEntity> createCard({
    required String token,
    required String city,
    String? complement,
    String? number,
    required String neighborhood,
    required String state,
    required String street,
    required String zipCode,
    bool log = false,
  }) {
    return makeRemoteCreateCreditCard().exec(
      city: city,
      complement: complement,
      neighborhood: neighborhood,
      state: state,
      street: street,
      token: token,
      zipCode: zipCode,
      number: number,
    );
  }

}
