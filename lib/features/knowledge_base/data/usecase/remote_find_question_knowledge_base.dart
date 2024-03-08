import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/find_question_knowledge_base.dart';

class RemoteFindQuestionKnowledgeBase implements FindQuestionKnowledgeBase {
  final HttpClient httpClient;
  final String url;

  RemoteFindQuestionKnowledgeBase({required this.httpClient, required this.url});

  @override
  Future<HelpQuestionFaqEntity> exec({bool log = false}) async {
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

      return HelpQuestionFaqEntity.fromMap(httpResponse["success"]["knowledgeQuestion"]);
    } catch (e) {
      throw e;
    }
  }
}
