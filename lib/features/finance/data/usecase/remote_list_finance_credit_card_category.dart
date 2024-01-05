import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/entity/finance_credit_card_category_entity.dart';
import '../../domain/usecase/list_finance_credit_card_category.dart';

class RemoteListFinanceCreditCardCategory implements ListFinanceCreditCardCategory {
  RemoteListFinanceCreditCardCategory({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<FinanceCreditCardCategoryEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
        newReturnErrorMsg: true,
      );

      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }

      final List<FinanceCreditCardCategoryEntity> category = [];

      (httpResponse['success']['category'] as List).forEach((element) {
        category.add(FinanceCreditCardCategoryEntity.fromMap(element));
      });
      
      return category;
    } catch (_) {
      throw DomainError.unexpected;
    }
  }
}