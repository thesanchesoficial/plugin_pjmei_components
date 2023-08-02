import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/add_category_financial_education.dart';

class RemoteAddCategoryFinancialEducation implements AddCategoryFinancialEducation {
  final HttpClient httpClient;
  final String url;

  RemoteAddCategoryFinancialEducation({
    required this.httpClient,
    required this.url
  });

  @override
  Future<CategoryFinancialEducationEntity> exec(CategoryFinancialEducationEntity params) async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'post',
        body: {
          'cover': params.cover,
          'title': params.title,
          'description': params.description,
          'tags': params.tags ?? [],
          'index': params.index ?? 0,
        },
      );
      return CategoryFinancialEducationEntity.fromMap(httpResponse["success"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}