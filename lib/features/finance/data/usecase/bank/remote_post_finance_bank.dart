import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../domain/entity/finance_bank_account_entity.dart';
import '../../../domain/usecase/bank/post_finance_bank.dart';

class RemotePostFinanceBank implements PostFinanceBank {
  RemotePostFinanceBank({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceBankAccountEntity> exec(FinanceBankAccountEntity params, {bool log = false}) async {
    final Map body = params.toMap();
    body['bankInstitutionId'] = params.bank!.id;
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        body: body,
        newReturnErrorMsg: true,
        log: log,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return FinanceBankAccountEntity.fromMap(httpResponse['success']['bankAccount']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
