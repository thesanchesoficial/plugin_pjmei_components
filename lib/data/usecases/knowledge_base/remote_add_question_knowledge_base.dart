import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/knowledge_base/add_question_knowledge_base.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddQuestionKnowledgeBase implements AddQuestionKnowledgeBase {
  final HttpClient httpClient;
  final String url;

  RemoteAddQuestionKnowledgeBase({
    required this.httpClient,
    required this.url
  });

  @override
  Future<HelpQuestionFaqEntity> exec(HelpQuestionFaqEntity params) async {
    Map<String, dynamic> body = params.toMap();
    body.removeWhere((key, value) => key == "id");
    body.addAll({"categoryId": params.category?.id ?? ""});
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'post',
        body: body,
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