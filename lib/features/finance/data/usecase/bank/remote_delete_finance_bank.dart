import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../domain/usecase/bank/delete_finance_bank.dart';

class RemoteDeleteFinance implements DeleteFinanceBank {
  RemoteDeleteFinance({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'delete',
        newReturnErrorMsg: true,
        log: log,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return true;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
