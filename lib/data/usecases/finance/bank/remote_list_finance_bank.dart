import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteListFinanceBank implements ListFinanceBank {
  RemoteListFinanceBank({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<FinanceBankAccountEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      final List<FinanceBankAccountEntity> temp = [];
      httpResponse['success']['bankAccounts'].map((e){
        temp.add(FinanceBankAccountEntity.fromMap(e));
      }).toList();

      return temp;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}