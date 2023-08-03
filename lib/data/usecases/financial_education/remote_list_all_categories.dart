import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteListCategoriesFinancialEducation implements ListCategoriesFinancialEducation {
  final HttpClient httpClient;
  final String url;

  RemoteListCategoriesFinancialEducation({
    required this.httpClient,
    required this.url
  });

  @override
  Future<List<CategoryFinancialEducationEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'get',
      );
      return (httpResponse["success"] as List).map((e) => CategoryFinancialEducationEntity.fromMap(e)).toList();
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}