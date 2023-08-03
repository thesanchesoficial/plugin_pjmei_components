import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetListCategoriesFaq implements GetListCategoriesFaq {
  RemoteGetListCategoriesFaq({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<HelpCategoriesFaqEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
          url: url, method: 'get', newReturnErrorMsg: true);
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }

      try {
        return (httpResponse['success']['knowledgeCategories']['items'] as List)
            .map((e) => HelpCategoriesFaqEntity.fromMap(e))
            .toList();
      } catch (e) {
        throw DomainError.unexpected;
      }
    } catch (error) {
      throw error;
    }
  }
}
