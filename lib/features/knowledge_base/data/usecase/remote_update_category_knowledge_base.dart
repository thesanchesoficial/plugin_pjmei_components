import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/update_category_knowledge_base.dart';

class RemoteUpdateCategoryKnowledgeBase implements UpdateCategoryKnowledgeBase {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateCategoryKnowledgeBase(
      {required this.httpClient, required this.url});

  @override
  Future<HelpCategoriesFaqEntity> exec(HelpCategoriesFaqEntity category,
      {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
          url: url,
          log: log,
          method: 'put',
          body: category.toMap(),
          newReturnErrorMsg: true);

      if ((httpResponse as Map<String, dynamic>).containsKey("error")) {
        throw httpResponse["error"]["message"];
      }

      return HelpCategoriesFaqEntity.fromMap(
          httpResponse["success"]["knowledgeCategory"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
