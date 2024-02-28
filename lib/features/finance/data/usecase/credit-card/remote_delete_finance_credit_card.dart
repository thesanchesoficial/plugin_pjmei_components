import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../domain/usecase/credit-card/delete_finance_credit_card.dart';

class RemoteDeleteFinanceCreditCard implements DeleteFinanceCreditCard {
  RemoteDeleteFinanceCreditCard({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'delete',
        log: log,
      );
      return httpResponse['success']['code'] == 200;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}