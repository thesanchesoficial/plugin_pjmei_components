import 'package:plugin_pjmei_components/data/http/http.dart';

import '../../domain/entity/category_entity.dart';
import '../../domain/usecase/list_all_categories.dart';

class RemoteListCategoriesFinancialEducation implements ListCategoriesFinancialEducation {
  final HttpClient httpClient;
  final String url;

  RemoteListCategoriesFinancialEducation({required this.httpClient, required this.url});

  @override
  Future<List<CategoryFinancialEducationEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true
      );
      if ((httpResponse as Map<String, dynamic>).containsKey("error")) {
        throw httpResponse["error"]["message"];
      }
      return (httpResponse["success"] as List).map((e) => CategoryFinancialEducationEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
