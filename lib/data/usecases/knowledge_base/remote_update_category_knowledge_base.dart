import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/knowledge_base/update_category_knowledge_base.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateCategoryKnowledgeBase implements UpdateCategoryKnowledgeBase {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateCategoryKnowledgeBase({
    required this.httpClient,
    required this.url
  });

  @override
  Future<HelpCategoriesFaqEntity> exec(HelpCategoriesFaqEntity category) async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'put',
        body: category.toMap(),
        newReturnErrorMsg: true
      );

      if ((httpResponse as Map<String, dynamic>).containsKey("error")) {
        throw httpResponse["error"]["message"];
      }
      
      return HelpCategoriesFaqEntity.fromMap(httpResponse["success"]["knowledgeCategory"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}