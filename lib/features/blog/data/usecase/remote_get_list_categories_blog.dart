import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../domain/entity/category_blog_entity.dart';
import '../../domain/usecase/get_list_categories_blog.dart';

class RemoteGetListCategoriesBlog implements GetListCategoriesBlog {
  RemoteGetListCategoriesBlog({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<CategoryBlogEntity>> exec({bool log = false}) async {
    try {
      final httpResponse =
          await httpClient.request(url: url, log: log, method: 'get');
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }

      try {
        return (httpResponse['items'] as List)
            .map((e) => CategoryBlogEntity.fromMap(e))
            .toList();
      } catch (e) {
        throw DomainError.unexpected;
      }
    } catch (error) {
      throw error;
    }
  }
}
