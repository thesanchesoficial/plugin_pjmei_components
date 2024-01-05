import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/entity/post_blog_entity.dart';
import '../../domain/usecase/get_list_posts_blog.dart';

class RemoteGetListPostsBlog implements GetListPostsBlog {
  RemoteGetListPostsBlog({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<PostBlogEntity>> exec({bool log = false}) async {
    try {
      final httpResponse =
          await httpClient.request(url: url, log: log, method: 'get');
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      try {
        return (httpResponse['items'] as List)
            .map((e) => PostBlogEntity.fromMap(e))
            .toList();
      } catch (e) {
        throw DomainError.unexpected;
      }
    } catch (error) {
      throw error;
    }
  }
}
