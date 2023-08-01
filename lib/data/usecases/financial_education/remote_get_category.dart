import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/get_category.dart';

class RemoteGetCategoryFinancialEducation
    implements GetCategoryFinancialEducation {
  RemoteGetCategoryFinancialEducation(
      {required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<CategoryFinancialEducationEntity> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return CategoryFinancialEducationEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
