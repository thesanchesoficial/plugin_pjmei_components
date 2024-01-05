import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/update_question_knowledge_base.dart';

class RemoteUpdateQuestionKnowledgeBase implements UpdateQuestionKnowledgeBase {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateQuestionKnowledgeBase(
      {required this.httpClient, required this.url});

  @override
  Future<HelpQuestionFaqEntity> exec(HelpQuestionFaqEntity category,
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

      return HelpQuestionFaqEntity.fromMap(
          httpResponse["success"]["knowledgeQuestion"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
