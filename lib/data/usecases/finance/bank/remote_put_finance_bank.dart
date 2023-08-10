import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemotePutFinance implements PostFinanceBank {
  RemotePutFinance({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceBankAccountEntity> exec(FinanceBankAccountEntity params, {bool log = false}) async {
    final Map body = params.toMap();
    var httpResponse;
    try {
      httpResponse = await httpClient.request(
        url: url,
        method: 'put',
        body: body,
        newReturnErrorMsg: true,
        log: log,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
    catch (e) {
    }
    return FinanceBankAccountEntity.fromMap(httpResponse['success']['bankAccount']);
  }
}
