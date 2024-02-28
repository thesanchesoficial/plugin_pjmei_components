import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/credit_card_entity.dart';
import '../../domain/usecase/create_credit_card.dart';

class RemoteCreateCreditCard implements CreateCreditCard {
  RemoteCreateCreditCard({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

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
  }) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: {
          'card': token,
          'billingAddress': {
            'city': city,
            'complement': complement,
            'number': number,
            'neighborhood': neighborhood,
            'state': state,
            'street': street,
            'zipCode': zipCode,
          }
        },
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return CreditCardPaymentEntity.fromMap(httpResponse['success']);
    } catch (e) {
      throw e;
    }
  }
}
