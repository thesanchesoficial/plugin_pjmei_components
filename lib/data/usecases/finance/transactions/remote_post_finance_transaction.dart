import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemotePostFinanceTransactions implements PostFinanceTransaction {
  RemotePostFinanceTransactions({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceTransactionEntity> exec(FinanceTransactionEntity params, {bool log = false}) async {
    final Map<dynamic, dynamic> body = params.toMap();
    body.removeWhere((key, value) => key == 'id');
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
      return FinanceTransactionEntity.fromMap(httpResponse['success']['transaction']);
    } catch (e) {
      throw e;
    }
  }
}