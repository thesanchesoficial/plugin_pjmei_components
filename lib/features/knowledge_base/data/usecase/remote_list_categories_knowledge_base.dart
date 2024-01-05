import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/entity/help_categorie_faq_entity.dart';
import '../../domain/usecase/list_categories_knowledge_base.dart';

class RemoteListCategoriesKnowledgeBase implements ListCategoriesKnowledgeBase {
  final HttpClient httpClient;
  final String url;

  RemoteListCategoriesKnowledgeBase(
      {required this.httpClient, required this.url});

  @override
  Future<List<HelpCategoriesFaqEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
          url: url, log: log, method: 'get', newReturnErrorMsg: true);

      if ((httpResponse as Map<String, dynamic>).containsKey("error")) {
        throw httpResponse["error"]["message"];
      }

      try {
        return (httpResponse["success"]["knowledgeCategories"]["items"] as List)
            .map((e) => HelpCategoriesFaqEntity.fromMap(e))
            .toList();
      } catch (e) {
        throw DomainError.unexpected;
      }
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
