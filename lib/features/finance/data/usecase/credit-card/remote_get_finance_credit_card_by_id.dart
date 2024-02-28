import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../domain/entity/finance_credit_card_entity.dart';
import '../../../domain/usecase/credit-card/get_finance_credit_card_by_id.dart';

class RemoteGetFinanceCreditCardById implements GetFinanceCreditCardById {
  RemoteGetFinanceCreditCardById({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceCreditCardEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
      );
      return FinanceCreditCardEntity.fromMap(httpResponse['success']['creditCard']);
    }
    on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}