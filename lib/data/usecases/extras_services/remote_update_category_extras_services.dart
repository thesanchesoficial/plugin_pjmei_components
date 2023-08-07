import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateCategoryExtrasServices
    implements UpdateCategoryExtrasServices {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateCategoryExtrasServices(
      {required this.httpClient, required this.url});

  @override
  Future<CategoryExtraServiceEntity> exec(CategoryExtraServiceEntity category,
      {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: category.toMap(),
      );
      return CategoryExtraServiceEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
