import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateQuestionKnowledgeBase implements UpdateQuestionKnowledgeBase {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateQuestionKnowledgeBase({
    required this.httpClient,
    required this.url
  });

  @override
  Future<HelpQuestionFaqEntity> exec(HelpQuestionFaqEntity category) async {
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
      
      return HelpQuestionFaqEntity.fromMap(httpResponse["success"]["knowledgeQuestion"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}