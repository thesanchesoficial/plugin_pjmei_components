import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/knowledge_base/list_categories_knowledge_base.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListCategoriesKnowledgeBase implements ListCategoriesKnowledgeBase {
  final HttpClient httpClient;
  final String url;

  RemoteListCategoriesKnowledgeBase({
    required this.httpClient,
    required this.url
  });

  @override
  Future<List<HelpCategoriesFaqEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'get',
        newReturnErrorMsg: true
      );
      
      if ((httpResponse as Map<String, dynamic>).containsKey("error")) {
        throw httpResponse["error"]["message"];
      }

      try {
        return (httpResponse["success"]["knowledgeCategories"]["items"] as List).map((e) => HelpCategoriesFaqEntity.fromMap(e)).toList();
      } catch (e) {
        throw DomainError.unexpected;
      }
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}