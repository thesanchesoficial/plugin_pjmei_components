import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

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
