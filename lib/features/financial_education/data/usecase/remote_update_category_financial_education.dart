import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

import '../../domain/entity/category_entity.dart';
import '../../domain/usecase/update_category_financial_education.dart';

class RemoteUpdateCategoryFinancialEducation
    implements UpdateCategoryFinancialEducation {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateCategoryFinancialEducation(
      {required this.httpClient, required this.url});

  @override
  Future<CategoryFinancialEducationEntity> exec(
      CategoryFinancialEducationEntity category,
      {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: category.toMap(),
      );
      return CategoryFinancialEducationEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
