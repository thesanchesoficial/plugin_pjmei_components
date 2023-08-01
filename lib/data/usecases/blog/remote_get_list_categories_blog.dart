import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/blog/get_list_categories_blog.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetListCategoriesBlog implements GetListCategoriesBlog {
  RemoteGetListCategoriesBlog({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<CategoryBlogEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(url: url, method: 'get');
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
