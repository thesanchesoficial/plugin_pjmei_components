import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListQuestionsKnowledgeBase implements ListQuestionsKnowledgeBase {
  final HttpClient httpClient;
  final String url;

  RemoteListQuestionsKnowledgeBase(
      {required this.httpClient, required this.url});

  @override
  Future<List<HelpQuestionFaqEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
          url: url, log: log, method: 'get', newReturnErrorMsg: true);

      if ((httpResponse as Map<String, dynamic>).containsKey("error")) {
        throw httpResponse["error"]["message"];
      }

      return (httpResponse["success"]["knowledgeQuestions"]["items"] as List)
          .map((e) => HelpQuestionFaqEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
