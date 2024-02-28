import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../domain/entity/finance_credit_card_status_entity.dart';
import '../../../domain/usecase/credit-card/get_finance_credit_card_status.dart';

class RemoteGetFinanceCreditCardStatus implements GetFinanceCreditCardStatus {
  RemoteGetFinanceCreditCardStatus({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<FinanceCreditCardStatusEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
      );
      final temp = httpResponse['success']['creditCardsAndInvoice'];
      final List<FinanceCreditCardStatusEntity> data = (temp as List).map((e) {
        return FinanceCreditCardStatusEntity.fromMap(e);
      }).toList();
      return data;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}