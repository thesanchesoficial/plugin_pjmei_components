import 'package:plugin_pjmei_components/test/data/http/http.dart';
import '../../domain/entity/financial_assistant_entity.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';
import '../../domain/usecase/list_financial_assistant.dart';

class RemoteListFinancialAssistant implements ListFinancialAssistant {
  RemoteListFinancialAssistant({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<FinancialAssistantEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
          url: url, log: log, method: 'get', newReturnErrorMsg: true);
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ((httpResponse['success']['financialAssistants']) as List)
          .map((e) => FinancialAssistantEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
