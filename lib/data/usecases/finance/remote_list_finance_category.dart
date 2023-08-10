import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteListFinanceCategory implements ListFinanceCategory {
  RemoteListFinanceCategory({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<FinanceCategoryEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey("error")) {
        throw httpResponse["error"]["message"];
      }

      final List<FinanceCategoryEntity> category = [];

      (httpResponse['success']['category'] as List).forEach((element) {
        category.add(FinanceCategoryEntity.fromMap(element));
      });
      
      return category;
    } catch (_) {
      throw DomainError.unexpected;
    }
  }
}