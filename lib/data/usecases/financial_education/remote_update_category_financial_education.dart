import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteUpdateCategoryFinancialEducation implements UpdateCategoryFinancialEducation {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateCategoryFinancialEducation({
    required this.httpClient,
    required this.url
  });

  @override
  Future<CategoryFinancialEducationEntity> exec(CategoryFinancialEducationEntity category) async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'put',
        body: category.toMap(),
      );
      return CategoryFinancialEducationEntity.fromMap(httpResponse["success"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}