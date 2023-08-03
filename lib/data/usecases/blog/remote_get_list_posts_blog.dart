import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetListPostsBlog implements GetListPostsBlog {
  RemoteGetListPostsBlog({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<PostBlogEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(url: url, method: 'get');
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
