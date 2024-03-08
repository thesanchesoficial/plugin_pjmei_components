import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/find_category_knowledge_base.dart';

class RemoteFindCategoryKnowledgeBase implements FindCategoryKnowledgeBase {
  final HttpClient httpClient;
  final String url;

  RemoteFindCategoryKnowledgeBase({required this.httpClient, required this.url});

  @override
  Future<HelpCategoriesFaqEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );

      if ((httpResponse as Map<String, dynamic>).containsKey("error")) {
        throw httpResponse["error"]["message"];
      }

      return HelpCategoriesFaqEntity.fromMap(httpResponse["success"]["knowledgeCategory"]);
    } catch (e) {
      throw e;
    }
  }
}
