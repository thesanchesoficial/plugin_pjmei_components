import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/credit_card_entity.dart';
import '../../domain/usecase/create_credit_card.dart';

class RemoteCreateCreditCard implements CreateCreditCard {
  RemoteCreateCreditCard({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<CreditCardPaymentEntity> exec(String token, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: {
          'card': token
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
