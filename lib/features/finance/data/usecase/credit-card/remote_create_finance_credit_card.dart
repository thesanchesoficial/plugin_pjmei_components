import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../domain/entity/finance_credit_card_entity.dart';
import '../../../domain/usecase/credit-card/create_finance_credit_card.dart';

class RemoteCreateFinanceCreditCard implements CreateFinanceCreditCard {
  RemoteCreateFinanceCreditCard({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec(FinanceCreditCardEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        body: params.toMap(),
        log: log,
      );
      return httpResponse['success']['code'] == 201;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}